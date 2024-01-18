import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';
import '../../bloc/language/language_bloc.dart';
import 'widgets/preference_setting_widget.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  LanguageBloc get _languageBloc => context.read<LanguageBloc>();

  @override
  void initState() {
    _languageBloc.add(const LanguageEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetGoalSubScaffold(
      appbarTitle: 'Settings',
      body: Column(
        children: [
          PreferenceSettingWidget(
            bloc: _languageBloc,
          ),
        ],
      ),
    );
  }
}
