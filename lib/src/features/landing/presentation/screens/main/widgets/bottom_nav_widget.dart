import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../../../../config/i18n/strings.g.dart';
import '../../../../../../config/route_config.dart';
import '../../../../../../shared/icon.dart';
import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';
import '../../../../../../shared/widgets/icon/custom_icon.dart';
import '../../../../../program/presentation/enum/program_form_mode.enum.dart';
import '../../../../../task/presentation/enum/task_form_mode_enum.dart';
import '../../../../../task/presentation/screens/home/bloc/todo/todo_bloc.dart';
import '../../../../../task/presentation/screens/task_create/task_create_page.dart';
import '../../../bloc/main_page/main_page_bloc.dart';
import 'bottom_nav_item_widget.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
    required this.bottomNavSelected,
    this.mainPageBloc,
    this.todoBloc,
  });

  final int bottomNavSelected;
  final MainPageBloc? mainPageBloc;
  final TodoBloc? todoBloc;

  @override
  Widget build(BuildContext context) {
    final day = DateFormat.d(LocaleSettings.currentLocale.languageCode)
        .format(DateTime.now());
    final month = DateFormat.MMMM(LocaleSettings.currentLocale.languageCode)
        .format(DateTime.now());
    final year = LocaleSettings.currentLocale.languageCode == 'en'
        ? DateFormat.y(LocaleSettings.currentLocale.languageCode)
            .format(DateTime.now())
        : int.parse(
              DateFormat.y(LocaleSettings.currentLocale.languageCode)
                  .format(DateTime.now()),
            ) +
            543;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppColors.stroke,
            width: 0.5,
          ),
        ),
        color: Colors.transparent,
      ),
      child: Container(
        height: Platform.isIOS ? 96 : 72,
        alignment: Alignment.center,
        padding:
            const EdgeInsets.only(left: 24, top: 16, right: 24, bottom: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BottomNavItem(
              icon: AppIcon.bottom_nav_home,
              onSelectedIcon: AppIcon.bottom_nav_home_selected,
              title: Translations.of(context).navbar.home,
              position: 0,
              currentIndex: bottomNavSelected,
              ontap: () => mainPageBloc!.add(
                MainPageEvent.bottomNavTapped(
                  bottomNavSelected: 0,
                  appbarTitle: '$month, $day $year',
                ),
              ),
            ),
            BottomNavItem(
              icon: AppIcon.bottom_nav_programs,
              onSelectedIcon: AppIcon.bottom_nav_programs_selected,
              title: Translations.of(context).navbar.program,
              position: 1,
              currentIndex: bottomNavSelected,
              ontap: () => mainPageBloc!.add(
                MainPageEvent.bottomNavTapped(
                  bottomNavSelected: 1,
                  appbarTitle: Translations.of(context).navbar.program,
                ),
              ),
            ),
            BottomNavItem(
              icon: AppIcon.bottom_nav_add,
              onSelectedIcon: AppIcon.bottom_nav_add,
              title: 'Add',
              position: 2,
              size: 56,
              isDisableColor: true,
              currentIndex: bottomNavSelected,
              ontap: () => _displayCreateBottomSheet(context),
            ),
            BottomNavItem(
              icon: AppIcon.bottom_nav_calendar,
              onSelectedIcon: AppIcon.bottom_nav_calendar_selected,
              title: Translations.of(context).navbar.calendar,
              position: 3,
              currentIndex: bottomNavSelected,
              ontap: () {
                context.pushNamed('test');
              },
            ),
            BottomNavItem(
              icon: AppIcon.bottom_nav_user,
              onSelectedIcon: AppIcon.bottom_nav_user_selected,
              title: Translations.of(context).navbar.user,
              position: 4,
              currentIndex: bottomNavSelected,
              ontap: () {
                mainPageBloc!.add(
                  MainPageEvent.bottomNavTapped(
                    bottomNavSelected: 4,
                    appbarTitle:
                        Translations.of(context).user_profile.page_title,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Future _displayCreateBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return _buildBottomSheet(context);
      },
    );
  }

  Widget _buildBottomSheet(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: AppColors.secondary,
        boxShadow: AppShadow.shadow,
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                100,
              ),
              color: Colors.white30,
            ),
            height: 4,
            width: 36,
            child: const SizedBox(),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              Translations.of(context).create_button.create_new,
              style: title2Bold().copyWith(color: AppColors.white),
            ),
          ),

          // Create program button
          GestureDetector(
            onTap: () {
              context.pop();
              context.pushNamed(
                Routes.programCreatePage,
                extra: PROGRAMFORMMODE.create,
              );
            },
            behavior: HitTestBehavior.translucent,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  SizedBox(
                    width: 24,
                    child: CustomIcon(
                      icon: AppIcon.bottom_nav_programs,
                      iconColor: AppColors.white,
                      size: 48,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Translations.of(context).create_button.create_program,
                        style: bodyBold().copyWith(color: AppColors.white),
                      ),
                      Text(
                        Translations.of(context)
                            .create_button
                            .create_program_des,
                        style: description()
                            .copyWith(color: AppColors.description),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Colors.black12,
            child: const SizedBox(),
          ),

          // Create task button
          GestureDetector(
            onTap: () async {
              context.pop();
              bool? isRefresh = await context.pushNamed(
                Routes.taskCreatepage,
                // extra: TASKFORMMODE.create,
                extra: TaskCreatePageData(mode: TASKFORMMODE.create),
              );

              if (isRefresh!) {
                todoBloc!.add(TodoEvent.started(DateTime.now()));
              }
            },
            behavior: HitTestBehavior.translucent,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  SizedBox(
                    width: 24,
                    child: CustomIcon(
                      icon: AppIcon.bottom_nav_add,
                      iconColor: AppColors.white,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Translations.of(context).create_button.crete_task,
                        style: bodyBold().copyWith(color: AppColors.white),
                      ),
                      Text(
                        Translations.of(context).create_button.crete_task_des,
                        style: description()
                            .copyWith(color: AppColors.description),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
