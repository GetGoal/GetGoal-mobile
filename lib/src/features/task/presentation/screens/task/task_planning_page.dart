import 'package:flutter/material.dart';

import 'widgets/list_task_for_planning.dart';

class TaskPlanningPage extends StatefulWidget {
  const TaskPlanningPage({super.key});

  @override
  State<TaskPlanningPage> createState() => _TaskPlanningPageState();
}

class _TaskPlanningPageState extends State<TaskPlanningPage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: ListTaskForPlanning(),
      ),
    );
  }
}
