import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../../../../../shared/themes/color.dart';
import '../../../../../../../shared/themes/font.dart';
import '../../../../../../../shared/themes/spacing.dart';
import '../../bloc/date_timeline/date_timeline_bloc.dart';

class DateSelectorTimeline extends StatelessWidget {
  const DateSelectorTimeline({
    super.key,
    this.dayCount = 4015,
    this.initialDate,
    this.currentDate,
    required this.ontap,
  });

  final int? dayCount;
  final DateTime? initialDate;
  final DateTime? currentDate;
  final Function(DateTime) ontap;

  @override
  Widget build(BuildContext context) {
    final ItemScrollController itemScrollController = ItemScrollController();

    return BlocBuilder<DateTimelineBloc, DateTimelineState>(
      builder: (context, state) {
        switch (state) {
          case DateTimelineStateInitial():
            return Container();
          case DateTimelineStateLoading():
            return Container();
          case DateTimelineStateLoadedSuccess(:final selectedDate):
            return _dateTimeTimelineLoadedSuccess(
              itemScrollController,
              selectedDate,
            );
          case DateTimelineStateError():
            return Container();
          default:
            return Container();
        }
      },
    );
  }

  Widget _dateTimeTimelineLoadedSuccess(
    ItemScrollController itemScrollController,
    DateTime selected,
  ) {
    return Container(
      margin: EdgeInsets.only(
        left: AppSpeacing.appMargin,
      ),
      height: 72,
      child: ScrollablePositionedList.builder(
        itemScrollController: itemScrollController,
        initialScrollIndex: 3650,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: dayCount!,
        itemBuilder: (context, index) {
          DateTime dateTimeByIndex = initialDate!.add(
            Duration(
              days: index,
            ),
          );

          DateTime date = DateTime(
            dateTimeByIndex.year,
            dateTimeByIndex.month,
            dateTimeByIndex.day,
          );

          DateTime selectedDate = DateTime(
            selected.year,
            selected.month,
            selected.day,
          );

          return GestureDetector(
            onTap: () {
              itemScrollController.scrollTo(
                index: index,
                duration: const Duration(milliseconds: 700),
                curve: Curves.fastOutSlowIn,
              );
              ontap(date);
            },
            child: Container(
              padding: const EdgeInsets.only(right: 8),
              child: Container(
                decoration: BoxDecoration(
                  // boxShadow: AppShadow.shadow,
                  borderRadius: BorderRadius.circular(16),
                  border: _isSameDate(date, selectedDate)
                      ? null
                      : Border.all(color: AppColors.stock),
                  color: _isSameDate(date, selectedDate)
                      ? AppColors.primary
                      : AppColors.white,
                ),
                width: 60,
                height: 72,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${DateFormat("E").format(date)}\n${date.day}',
                      style: body2(),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  bool _isSameDate(DateTime date, DateTime selectedDate) {
    return date.year == selectedDate.year &&
        date.month == selectedDate.month &&
        date.day == selectedDate.day;
  }
}