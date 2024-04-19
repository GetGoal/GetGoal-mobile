import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../../../config/i18n/strings.g.dart';
import '../../../../../../config/route_config.dart';
import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';
import '../../../../../../shared/themes/spacing.dart';
import '../../../../../landing/presentation/bloc/main_page/main_page_bloc.dart';
import '../../../../domain/entities/task.dart';
import '../bloc/date_timeline/date_timeline_bloc.dart';
import '../bloc/todo/todo_bloc.dart';
import 'widget/date_card_selection.dart';
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

  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  void initState() {
    _dateTimelineBloc.add(const DateTimelineEvent.started());
    _todoBloc.add(TodoEvent.started(DateTime.now()));
    super.initState();
  }

  void _onDaySelected(selectedDay, focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });
    }

    final day = DateFormat.d(LocaleSettings.currentLocale.languageCode)
        .format(selectedDay);
    final month = DateFormat.MMMM(LocaleSettings.currentLocale.languageCode)
        .format(selectedDay);
    final year = LocaleSettings.currentLocale.languageCode == 'en'
        ? DateFormat.y(LocaleSettings.currentLocale.languageCode)
            .format(selectedDay)
        : int.parse(
              DateFormat.y(LocaleSettings.currentLocale.languageCode)
                  .format(selectedDay),
            ) +
            543;

    _mainPageBloc.add(
      MainPageEvent.bottomNavTapped(
        bottomNavSelected: 0,
        appbarTitle: '$month, $day $year',
      ),
    );

    _todoBloc.add(TodoEvent.dateSelectorTapped(date: selectedDay));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        _dateSectionBar(),
        const SizedBox(height: 24),
        Container(
          padding: EdgeInsets.all(AppSpacing.appMargin),
          child: Text(
            context.t.task.task_status_to_do,
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
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: TableCalendar(
        rowHeight: 80,
        calendarFormat: CalendarFormat.week,
        headerVisible: false,
        daysOfWeekVisible: false,
        focusedDay: _focusedDay,
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        calendarBuilders: _buildCalendarBuilders(),
        availableGestures: AvailableGestures.all,
        calendarStyle: CalendarStyle(
          defaultTextStyle: bodyBold(),
          holidayTextStyle: bodyBold(),
          weekendTextStyle: bodyBold(),
          outsideDaysVisible: false,
          selectedDecoration: BoxDecoration(
            gradient: AppColors.primaryGradient,
            shape: BoxShape.circle,
            boxShadow: AppShadow.shadow,
          ),
          todayDecoration: BoxDecoration(
            color: AppColors.secondary,
            shape: BoxShape.circle,
            boxShadow: AppShadow.shadow,
          ),
        ),
        onPageChanged: (focusedDay) {
          _focusedDay = focusedDay;
        },
        onDaySelected: _onDaySelected,
        selectedDayPredicate: (day) => isSameDay(day, _selectedDay),
      ),
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
              color: AppColors.stroke,
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

  CalendarBuilders _buildCalendarBuilders() {
    return CalendarBuilders(
      defaultBuilder: (context, day, focusedDay) {
        return DateCardSelection(day: day);
      },
      selectedBuilder: (context, day, focusedDay) {
        return DateCardSelection(day: day, isSelected: true);
      },
      todayBuilder: (context, day, focusedDay) {
        return DateCardSelection(day: day, isToday: true);
      },
      dowBuilder: (context, day) {
        if (day.weekday == DateTime.sunday) {
          final text = DateFormat.E().format(day);
          return Center(
            child: Text(
              text,
              style: const TextStyle(color: Colors.red),
            ),
          );
        }
        return null;
      },
    );
  }
}
