import 'package:flutter/material.dart';

import '../../../../../shared/themes/spacing.dart';
import '../../../../../shared/widgets/button/done_button.dart';
import 'widgets/list_task_for_planning.dart';

class TaskPlanningPage extends StatefulWidget {
  const TaskPlanningPage({super.key});

  @override
  State<TaskPlanningPage> createState() => _TaskPlanningPageState();
}

class _TaskPlanningPageState extends State<TaskPlanningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(top: AppSpeacing.appMargin),
          child: const Text('Tasks Planning'),
        ),
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ListTaskForPlanning(),
          SizedBox(
            height: 40,
          ),
          DoneButton(),
        ],
      ),
    );
  }
}
