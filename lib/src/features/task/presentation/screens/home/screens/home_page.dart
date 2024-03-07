import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../../../../config/i18n/strings.g.dart';
import '../../../../../../config/route_config.dart';
import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';
import '../../../../../../shared/themes/spacing.dart';
import '../../../../../landing/presentation/bloc/main_page/main_page_bloc.dart';
import '../../../../domain/models/task.dart';
import '../../../enum/task_form_mode_enum.dart';
import '../../task_create/task_create_page.dart';
import '../bloc/date_timeline/date_timeline_bloc.dart';
import '../bloc/todo/todo_bloc.dart';
import 'widget/date_section_timeline_widget.dart';
import 'widget/todo_task_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTimelineBloc get _dateTimelineBloc => context.read<DateTimelineBloc>();
  TodoBloc get _todoBloc => context.read<TodoBloc>();
  MainPageBloc get _mainPageBloc => context.read<MainPageBloc>();

  final ItemScrollController itemScrollController = ItemScrollController();

  @override
  void initState() {
    _dateTimelineBloc.add(const DateTimelineEvent.started());
    _todoBloc.add(TodoEvent.started(DateTime.now()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        _dateSectionBar(),
        const SizedBox(height: 40),
        _todoSection(),
      ],
    );
  }

  Widget _dateSectionBar() {
    return DateSelectorTimeline(
      initialDate: DateTime.now().subtract(const Duration(days: 3650)),
      currentDate: DateTime.now(),
      ontap: (date) {
        _dateTimelineBloc.add(DateTimelineEvent.tapped(selectedTime: date));
        _todoBloc.add(TodoEvent.dateSelectorTapped(date: date));
        _mainPageBloc.add(
          MainPageEvent.bottomNavTapped(
            bottomNavSelected: 0,
            appbarTitle: DateFormat('MMMM, dd yyyy').format(date),
          ),
        );
      },
    );
  }

  Widget _todoSection() {
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        switch (state) {
          case TodoEventStarted():
            return _todoLoading();
          case TodoStateLoading():
            return _todoLoading();
          case TodoStateLoadedSuccess(:final todoList, :final doneList):
            return _todoListLoadedSuccess(todoList, doneList);
          case TodoStateLoadedEmpty():
            return _todoListEmpty();
          case TodoStateError():
            return _todoListEmpty();
          default:
            return _todoListEmpty();
        }
      },
    );
  }

  Widget _todoLoading() {
    return Expanded(
      child: Center(
        child: CircularProgressIndicator(
          color: AppColors.primary,
        ),
      ),
    );
  }

  Widget _todoListLoadedSuccess(List<Task> todoList, List<Task> doneList) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: AppSpacing.appMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _todoList(todoList),
              const SizedBox(height: 20),
              _doneList(doneList),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _todoList(List<Task> tasks) {
    bool isTaskEmpty = tasks.isEmpty;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Translations.of(context).task.task_status_to_do,
          style: heading3(),
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 16),
        isTaskEmpty
            ? SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Center(
                  child: Text(
                    Translations.of(context).task.empty_task_todo,
                    style: body1().copyWith(color: AppColors.description),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            : ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: TodoTask(
                      taskStatus: getTaskStatus(tasks[index].taskStatus!),
                      taskName: tasks[index].taskName,
                      taskDescription: tasks[index].taskDescription,
                      startTime: tasks[index].startTime,
                      ontap: () async {
                        bool? isRefreash = await context.pushNamed(
                          Routes.taskDetailPage,
                          pathParameters: {
                            'id': tasks[index].taskId.toString(),
                          },
                        );
                        if (isRefreash!) {
                          _todoBloc.add(
                            TodoEvent.started(
                              DateTime.parse(
                                tasks[index].startTime.toString(),
                              ),
                            ),
                          );
                        }
                      },
                      onEdit: () async {
                        bool? isRefreash = await context.pushNamed(
                          Routes.taskCreatepage,
                          extra: TaskCreatePageData(
                            mode: TASKFORMMODE.edit,
                            taskId: tasks[index].taskId.toString(),
                          ),
                          //   extra: TASKFORMMODE.edit,
                          //   queryParameters: {'id': tasks[index].taskId.toString()},
                        );

                        if (isRefreash!) {
                          _todoBloc.add(
                            TodoEvent.started(
                              DateTime.parse(
                                tasks[index].startTime.toString(),
                              ),
                            ),
                          );
                        }
                      },
                      onDoneTapped: () => _todoBloc.add(
                        TodoEvent.changeTaskStatusToDone(
                          taskId: tasks[index].taskId.toString(),
                          date: DateTime.parse(
                            tasks[index].startTime.toString(),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
      ],
    );
  }

  Widget _todoListEmpty() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.7,
      child: Center(child: Text(Translations.of(context).task.empty_task)),
    );
  }

  Widget _doneList(List<Task> tasks) {
    bool isTaskEmpty = tasks.isEmpty;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Translations.of(context).task.task_status_done,
          style: heading3(),
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 16),
        isTaskEmpty
            ? SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Center(
                  child: Text(
                    Translations.of(context).task.empty_task_done,
                    style: body1().copyWith(color: AppColors.description),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            : ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: TodoTask(
                      taskStatus: getTaskStatus(tasks[index].taskStatus!),
                      taskName: tasks[index].taskName,
                      taskDescription: tasks[index].taskDescription,
                      onUnDoneTapped: () => _todoBloc.add(
                        TodoEvent.changeTaskStatusToNotDone(
                          taskId: tasks[index].taskId.toString(),
                          date: DateTime.parse(
                            tasks[index].startTime.toString(),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
      ],
    );
  }

  TASKSTATUS getTaskStatus(int taskStatus) {
    switch (taskStatus) {
      case 1:
        return TASKSTATUS.todo;
      case 2:
        return TASKSTATUS.done;
      default:
        return TASKSTATUS.todo;
    }
  }
}
