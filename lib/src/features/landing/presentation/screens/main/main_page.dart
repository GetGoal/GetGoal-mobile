import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        log(state.toString());
        return Scaffold(
          appBar: AppBar(
            title: Padding(
              padding: EdgeInsets.only(top: AppSpeacing.appMargin),
              child: Text(state.appbarTitle),
            ),
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
}
