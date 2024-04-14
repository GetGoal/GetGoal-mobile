import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../../config/i18n/strings.g.dart';
import '../../../../../shared/icon.dart';
import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/font.dart';
import '../../../../../shared/themes/spacing.dart';
import '../../../../../shared/utils/date_format.dart';
import '../../../../../shared/widgets/button/circle_button.dart';
import '../../../../../shared/widgets/icon/custom_icon.dart';
import '../../../../task/presentation/screens/home/bloc/todo/todo_bloc.dart';
import '../../../domain/entities/event.dart';
import '../../blocs/calendar/calendar_bloc.dart';
import '../widgets/calendar_task.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  TodoBloc get _todoBloc => context.read<TodoBloc>();
  CalendarBloc get _calendarBloc => context.read<CalendarBloc>();

  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  late final ValueNotifier<List<Event>> _selectedEvents;

  final kEvents = LinkedHashMap<DateTime, List<Event>>(
    equals: isSameDay,
    hashCode: getHashCode,
  );

  @override
  void initState() {
    super.initState();
    _calendarBloc.add(CalendarEvent.started(date: DateTime.now()));

    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  @override
  void dispose() {
    _selectedEvents.dispose();
    super.dispose();
  }

  void _onDaySelected(selectedDay, focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
        _selectedEvents.value = _getEventsForDay(selectedDay);
      });
    }

    _todoBloc.add(TodoEvent.dateSelectorTapped(date: selectedDay));
  }

  List<Event> _getEventsForDay(DateTime day) {
    return kEvents[day] ?? [];
  }

  CalendarBuilders _buildCalendarBuilders() {
    return CalendarBuilders(
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

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CalendarBloc, CalendarState>(
      listener: (context, state) {
        switch (state) {
          case CalendarStateLoading(:final date):
            kEvents.addAll(date);
            break;
          default:
        }
      },
      builder: (context, state) {
        switch (state) {
          case CalendarStateSuccess():
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: AppSpacing.appMargin,
                    ),
                    child: TableCalendar(
                      focusedDay: _focusedDay,
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      calendarBuilders: _buildCalendarBuilders(),
                      availableGestures: AvailableGestures.all,
                      calendarStyle: CalendarStyle(
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
                        markerDecoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: AppShadow.shadow,
                          gradient: AppColors.redGradient,
                        ),
                        markersAnchor: 0.1,
                        markerSizeScale: 0.1,
                        markerMargin: const EdgeInsets.only(top: 4),
                      ),
                      headerStyle: HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,
                        titleTextStyle: title2Bold(),
                        headerMargin: const EdgeInsets.only(bottom: 24),
                        leftChevronIcon: CircleButton(
                          icon: CustomIcon(
                            icon: AppIcon.back_icon,
                            size: 24,
                            iconColor: AppColors.white,
                          ),
                          color: AppColors.secondary,
                        ),
                        rightChevronIcon: CircleButton(
                          icon: CustomIcon(
                            rotateAngle: 180,
                            icon: AppIcon.back_icon,
                            size: 24,
                            iconColor: AppColors.white,
                          ),
                          color: AppColors.secondary,
                        ),
                      ),
                      onPageChanged: (focusedDay) {
                        _calendarBloc
                            .add(CalendarEvent.started(date: focusedDay));
                        _focusedDay = focusedDay;
                      },
                      onDaySelected: _onDaySelected,
                      selectedDayPredicate: (day) =>
                          isSameDay(day, _selectedDay),
                      eventLoader: (day) {
                        return _getEventsForDay(day);
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: AppSpacing.appMargin),
                    child: Text(t.calendar_page.task, style: title2Bold()),
                  ),
                  _buildTaskSection(),
                ],
              ),
            );

          default:
            return const SizedBox();
        }
      },
    );
  }

  Widget _buildTaskSection() {
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        switch (state) {
          case TodoEventStarted():
            return const SizedBox();

          case TodoStateLoading():
            return const SizedBox();

          case TodoStateLoadedSuccess(:final todoList):
            return Container(
              margin: EdgeInsets.symmetric(
                horizontal: AppSpacing.appMargin,
                vertical: 16,
              ),
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(16),
                boxShadow: AppShadow.shadow,
              ),
              child: ListView.separated(
                separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Divider(
                    color: AppColors.stroke,
                  ),
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: todoList.length,
                itemBuilder: (context, index) {
                  return CalendarTask(
                    taskName: todoList[index].taskName ?? 'Unknown',
                    category: todoList[index].category,
                    startTime: todoList[index].startTime!,
                  );
                },
              ),
            );

          default:
            return Container(
              margin: const EdgeInsets.only(top: 48),
              alignment: Alignment.center,
              child: Text(
                Translations.of(context).task.empty_task,
                style: body1().copyWith(
                  color: AppColors.description,
                ),
              ),
            );
        }
      },
    );
  }
}
