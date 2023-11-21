import 'package:flutter/material.dart';

import '../../../../../shared/themes/spacing.dart';
import '../../../../program/presentation/screens/program/program_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> pages = [
    const ProgramPage(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(top: AppSpeacing.appMargin),
          child: const Text('Programs'),
        ),
      ),
      body: pages[_currentIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Program'),
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Program'),
      //   ],
      // ),
    );
  }
}
