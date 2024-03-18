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
import '../../../../domain/entities/task.dart';
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        _dateSectionBar(),
        const SizedBox(height: 24),
        Container(
          padding: EdgeInsets.all(AppSpacing.appMargin),
          child: Text(
            'Tasks',
            style: title2Bold().copyWith(
              color: AppColors.white,
            ),
          ),
        ),
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
          case TodoStateLoadedSuccess(:final todoList):
            return _buildTodoSection(todoList);
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
          color: AppColors.primary2,
        ),
      ),
    );
  }

  Widget _buildTodoSection(List<Task> taskList) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: AppSpacing.appMargin),
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: AppColors.strock,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: taskList.length,
            itemBuilder: (context, index) {
              return TodoTask(
                taskStatus: getTaskStatus(taskList[index].taskStatus!),
                taskName: taskList[index].taskName,
                taskDescription: taskList[index].taskDescription,
                startTime: taskList[index].startTime,
                category: taskList[index].category,
                ontap: () async {
                  bool? isRefreash = await context.pushNamed(
                    Routes.taskDetailPage,
                    pathParameters: {
                      'id': taskList[index].taskId.toString(),
                    },
                  );

                  if (isRefreash!) {
                    _todoBloc.add(
                      TodoEvent.started(
                        DateTime.parse(
                          taskList[index].startTime.toString(),
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
                      taskId: taskList[index].taskId.toString(),
                    ),
                  );

                  if (isRefreash!) {
                    _todoBloc.add(
                      TodoEvent.started(
                        DateTime.parse(
                          taskList[index].startTime.toString(),
                        ),
                      ),
                    );
                  }
                },
                onDoneTapped: () => _todoBloc.add(
                  TodoEvent.changeTaskStatusToDone(
                    taskId: taskList[index].taskId.toString(),
                    date: DateTime.parse(
                      taskList[index].startTime.toString(),
                    ),
                  ),
                ),
                onUnDoneTapped: () => _todoBloc.add(
                  TodoEvent.changeTaskStatusToNotDone(
                    taskId: taskList[index].taskId.toString(),
                    date: DateTime.parse(
                      taskList[index].startTime.toString(),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _todoListEmpty() {
    return Expanded(
      child: Center(
        child: Text(
          Translations.of(context).task.empty_task,
          style: body1().copyWith(
            color: AppColors.description,
          ),
        ),
      ),
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
