import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../../shared/icon.dart';
import '../../../../../../shared/themes/color.dart';
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
              title: 'Home',
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
              title: 'Programs',
              position: 1,
              currentIndex: bottomNavSelected,
              ontap: () => bloc.add(
                const MainPageEvent.bottomNavTapped(
                  bottomNavSelected: 1,
                  appbarTitle: 'Programs',
                ),
              ),
            ),
            BottomNavItem(
              icon: AppIcon.bottom_nav_add,
              onSelectedIcon: AppIcon.bottom_nav_add,
              color: AppColors.primary,
              position: 2,
              size: 48,
              ontap: () {},
            ),
            BottomNavItem(
              icon: AppIcon.bottom_nav_calendar,
              onSelectedIcon: AppIcon.bottom_nav_calendar_selected,
              title: 'Calendar',
              position: 3,
              currentIndex: bottomNavSelected,
              ontap: () {},
            ),
            BottomNavItem(
              icon: AppIcon.bottom_nav_user,
              onSelectedIcon: AppIcon.bottom_nav_user_selected,
              title: 'User',
              position: 4,
              currentIndex: bottomNavSelected,
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
