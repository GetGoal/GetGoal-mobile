import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../shared/icon.dart';
import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/font.dart';
import '../../../../../shared/themes/spacing.dart';
import '../../../../program/presentation/screens/program/program_page.dart';
import '../../../../task/presentation/screens/home/bloc/todo/todo_bloc.dart';
import '../../../../task/presentation/screens/home/screens/home_page.dart';
import '../../../../user/presentation/screens/bloc/user_profile/user_profile_bloc.dart';
import '../../../../user/presentation/screens/user_profile_page.dart';
import '../../bloc/main_page/main_page_bloc.dart';
import 'widgets/bottom_nav_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MainPageBloc get _mainPageBloc => context.read<MainPageBloc>();
  TodoBloc get _todoBloc => context.read<TodoBloc>();
  UserProfileBloc get _userProfileBloc => context.read<UserProfileBloc>();

  List<Widget> pages = [
    const HomePage(),
    const ProgramPage(),
    const SizedBox(),
    const SizedBox(),
    const UserProfilePage(),
  ];

  @override
  void initState() {
    _mainPageBloc.add(const MainPageEvent.started());
    _userProfileBloc.add(const UserProfileEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainPageBloc, MainPageState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: state.bottomNavSelected == 0 ? 72 : null,
            title: Padding(
              padding: EdgeInsets.only(
                top: AppSpacing.appMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  state.bottomNavSelected == 0
                      ? BlocConsumer<UserProfileBloc, UserProfileState>(
                          listener: (context, state) {},
                          builder: (context, state) {
                            switch (state) {
                              case UserProfileStateInitial():
                                return const SizedBox();
                              case UserProfileStateLoading():
                                return const SizedBox();
                              case UserProfileStateLoadedSuccess(:final user):
                                return Text(
                                  'Welcome back, ${user.firstName}',
                                  style: bodyRegular()
                                      .copyWith(color: AppColors.white),
                                );
                              case UserProfileStateError():
                                return Text('Error', style: title1());
                              default:
                                return const SizedBox();
                            }
                          },
                        )
                      : const SizedBox(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        state.appbarTitle,
                        style: title1Bold().copyWith(color: AppColors.white),
                      ),
                      const Spacer(),
                      state.bottomNavSelected == 0
                          ? _buildNotificationIconAction()
                          : const SizedBox(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          body: pages[state.bottomNavSelected],
          bottomNavigationBar: BottomNavigation(
            bottomNavSelected: state.bottomNavSelected,
            mainPageBloc: _mainPageBloc,
            todoBloc: _todoBloc,
          ),
        );
      },
    );
  }

  Widget _buildNotificationIconAction() {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        child: SvgPicture.asset(
          AppIcon.notification_icon,
          width: 36,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
