import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/route_config.dart';
import '../../../../../shared/icon.dart';
import '../../../../../shared/themes/spacing.dart';
import '../../../../program/presentation/screens/program/program_page.dart';
import '../../../../task/presentation/screens/home/screens/home_page.dart';
import '../../bloc/main_page/main_page_bloc.dart';
import 'widgets/bottom_nav_widget.dart';

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
        return Scaffold(
          appBar: AppBar(
            title: Padding(
              padding: EdgeInsets.only(
                top: AppSpacing.appMargin,
              ),
              child: Text(state.appbarTitle),
            ),
            actions: [
              state.bottomNavSelected == 0
                  ? _settingIconAction()
                  : const SizedBox(),
            ],
          ),
          body: pages[state.bottomNavSelected],
          bottomNavigationBar: BottomNavigation(
            bottomNavSelected: state.bottomNavSelected,
            bloc: _mainPageBloc,
          ),
        );
      },
    );
  }

  Widget _settingIconAction() {
    return Container(
      margin: EdgeInsets.only(
        top: AppSpacing.appMargin,
        right: AppSpacing.appMargin,
      ),
      child: GestureDetector(
        onTap: () {
          context.push(Routes.settingPage);
        },
        child: SizedBox(
          child: SvgPicture.asset(
            AppIcon.setting_icon,
            width: 32,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
