import 'package:flutter/material.dart';

import '../../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';
import 'widgets/preference_setting_widget.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return const GetGoalSubScaffold(
      appbarTitle: 'Settings',
      body: Column(
        children: [
          PreferenceSettingWidget(),
        ],
      ),
    );
  }
}
