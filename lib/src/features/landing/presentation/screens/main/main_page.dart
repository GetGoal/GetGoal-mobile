import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../../../../core/cache_manager.dart';
import '../../../../../shared/icon.dart';
import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/spacing.dart';
import '../../../../program/presentation/screens/program/program_page.dart';
import '../../../../task/presentation/screens/home/screens/home_page.dart';
import '../../bloc/main_page/main_page_bloc.dart';
import 'widgets/bottom_nav_item_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MainPageBloc get _mainPageBloc => context.read<MainPageBloc>();

  List<Widget> pages = [
    const HomePage(),
    const ProgramPage(),
  ];

  @override
  void initState() {
    _mainPageBloc.add(const MainPageEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainPageBloc, MainPageState>(
      builder: (context, state) {
        log(state.toString());
        return Scaffold(
          appBar: AppBar(
            title: Padding(
              padding: EdgeInsets.only(top: AppSpeacing.appMargin),
              child: Text(state.appbarTitle),
            ),
          ),
          body: pages[state.bottomNavSelected],
          bottomNavigationBar: Container(
            alignment: Alignment.center,
            height: 96,
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
              height: 72,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BottomNavItem(
                    icon: AppIcon.bottom_nav_home,
                    onSelectedIcon: AppIcon.bottom_nav_home_selected,
                    title: 'Home',
                    position: 0,
                    currentIndex: state.bottomNavSelected,
                    ontap: () => _mainPageBloc.add(
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
                    currentIndex: state.bottomNavSelected,
                    ontap: () => _mainPageBloc.add(
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
                    currentIndex: state.bottomNavSelected,
                    ontap: () {},
                  ),
                  BottomNavItem(
                    icon: AppIcon.bottom_nav_user,
                    onSelectedIcon: AppIcon.bottom_nav_user_selected,
                    title: 'User',
                    position: 4,
                    currentIndex: state.bottomNavSelected,
                    ontap: () {
                      DefaultCacheManager().emptyCache();
                      CustomCacheManager.instance.emptyCache();
                      imageCache.clear();
                      imageCache.clearLiveImages();
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
