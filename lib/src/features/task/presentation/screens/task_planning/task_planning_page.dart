import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../shared/themes/spacing.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';
import '../../../domain/models/task.dart';
import 'widgets/task_planning_card_widget.dart';

class TaskPlanningPage extends StatefulWidget {
  const TaskPlanningPage({super.key, required this.tasks});

  final List<Task> tasks;

  @override
  State<TaskPlanningPage> createState() => _TaskPlanningPageState();
}

class _TaskPlanningPageState extends State<TaskPlanningPage> {
  @override
  Widget build(BuildContext context) {
    return GetGoalSubScaffold(
      appbarTitle: 'Tasks Planning',
      body: SingleChildScrollView(
        child: Column(
          children: [
            _tasksSection(widget.tasks),
            const SizedBox(height: 36),
          ],
        ),
      ),
      bottomNavigationBar: _bottomButton(),
    );
  }

  Widget _tasksSection(List<Task> tasks) {
    if (tasks.isEmpty) {
      return _tasksEmpty();
    }
    return Container(
      margin: EdgeInsets.only(
        top: AppSpeacing.appMargin,
        right: AppSpeacing.appMargin,
        bottom: 0,
        left: AppSpeacing.appMargin,
      ),
      child: ListView.builder(
        clipBehavior: Clip.none,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) {
          return Container(
            margin: index != widget.tasks.length - 1
                ? const EdgeInsets.only(bottom: 16)
                : const EdgeInsets.only(bottom: 0),
            child: TaskPlanningCard(
              taskNumber: index + 1,
              taskName: widget.tasks[index].taskName!,
              startTime: widget.tasks[index].startTime,
              endTime: widget.tasks[index].endTime,
            ),
          );
        },
      ),
    );
  }

  Widget _tasksEmpty() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sorry, some error occur.\nPlease try again',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomButton() {
    bool isTaskEmpty = widget.tasks.isEmpty;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 36),
      margin: EdgeInsets.symmetric(horizontal: AppSpeacing.appMargin),
      child: MainButton(
        buttonText: isTaskEmpty ? 'Back' : 'Done',
        onTap: () {
          if (isTaskEmpty) {
            context.pop();
            return;
          }
        },
      ),
    );
  }
}
