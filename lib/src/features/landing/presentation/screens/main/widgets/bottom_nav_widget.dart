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
import '../../../../../task/presentation/screens/task_create/task_create_page.dart';
import '../../../bloc/main_page/main_page_bloc.dart';
import 'bottom_nav_item_widget.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
    required this.bottomNavSelected,
    required this.bloc,
  });

  final int bottomNavSelected;
  final MainPageBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: Platform.isIOS ? 96 : 72,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppColors.stock,
            width: 0.5,
          ),
        ),
        color: AppColors.white,
        boxShadow: AppShadow.shadow,
      ),
      child: SizedBox(
        height: 48,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomNavItem(
              icon: AppIcon.bottom_nav_home,
              onSelectedIcon: AppIcon.bottom_nav_home_selected,
              title: Translations.of(context).navbar.home,
              position: 0,
              currentIndex: bottomNavSelected,
              ontap: () => bloc.add(
                MainPageEvent.bottomNavTapped(
                  bottomNavSelected: 0,
                  appbarTitle:
                      DateFormat('MMMM, dd yyyy').format(DateTime.now()),
                ),
              ),
            ),
            BottomNavItem(
              icon: AppIcon.bottom_nav_programs,
              onSelectedIcon: AppIcon.bottom_nav_programs_selected,
              title: Translations.of(context).navbar.program,
              position: 1,
              currentIndex: bottomNavSelected,
              ontap: () => bloc.add(
                MainPageEvent.bottomNavTapped(
                  bottomNavSelected: 1,
                  appbarTitle: Translations.of(context).navbar.program,
                ),
              ),
            ),
            BottomNavItem(
              icon: AppIcon.bottom_nav_add,
              onSelectedIcon: AppIcon.bottom_nav_calendar_selected,
              title: 'Add',
              position: 2,
              size: 48,
              color: AppColors.primary,
              currentIndex: bottomNavSelected,
              ontap: () => _displayCreateBottomSheet(context),
            ),
            // Theme(
            //   data: Theme.of(context).copyWith(
            //     splashFactory: NoSplash.splashFactory,
            //   ),
            //   child: PopupMenuButton(
            //     elevation: 1,
            //     shadowColor: Colors.black38,
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(16),
            //     ),
            //     offset: Offset(kToolbarHeight, Platform.isIOS ? -96 : -72),
            //     padding: const EdgeInsets.all(0),
            //     icon: SvgPicture.asset(
            //       AppIcon.bottom_nav_add,
            //       fit: BoxFit.scaleDown,
            //     ),
            //     iconSize: 48,
            //     itemBuilder: (context) => [
            //       PopupMenuItem(
            //         onTap: () => context.pushNamed('/program/create'),
            //         child: Row(
            //           children: [
            //             CustomIcon(
            //               icon: AppIcon.bottom_nav_add,
            //               iconColor: AppColors.description,
            //               size: 16,
            //             ),
            //             const SizedBox(width: 8),
            //             const Text('Create program'),
            //           ],
            //         ),
            //       ),
            //       PopupMenuItem(
            //         onTap: () => context.pushNamed('/task/create'),
            //         child: Row(
            //           children: [
            //             CustomIcon(
            //               icon: AppIcon.bottom_nav_add,
            //               iconColor: AppColors.description,
            //               size: 16,
            //             ),
            //             const SizedBox(width: 8),
            //             const Text('Create task'),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
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
                bloc.add(
                  const MainPageEvent.bottomNavTapped(
                    bottomNavSelected: 4,
                    appbarTitle: '',
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
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                100,
              ),
              color: Colors.black26,
            ),
            height: 4,
            width: 36,
            child: const SizedBox(),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text('Create new ', style: heading3()),
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
                      iconColor: AppColors.description,
                      size: 48,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Program', style: title1()),
                      Text(
                        'Create a program for your needs or everyone',
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
            onTap: () {
              context.pop();
              context.pushNamed(
                Routes.taskCreatepage,
                // extra: TASKFORMMODE.create,
                extra: TaskCreatePageData(mode: TASKFORMMODE.create),
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
                      icon: AppIcon.bottom_nav_add,
                      iconColor: AppColors.description,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('To-do task', style: title1()),
                      Text(
                        'Add a to-do task for yourself',
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
