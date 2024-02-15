import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/spacing.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/loading_screen_widget.dart';
import '../../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';
import '../../../domain/models/task.dart';
import '../../bloc/task_planning/task_planning_bloc.dart';
import 'widgets/task_planning_card_widget.dart';

class TaskPlanningPage extends StatefulWidget {
  const TaskPlanningPage({
    super.key,
    this.programId,
  });

  final String? programId;

  @override
  State<TaskPlanningPage> createState() => _TaskPlanningPageState();
}

class _TaskPlanningPageState extends State<TaskPlanningPage> {
  TaskPlanningBloc get _taskPlanningBloc => context.read<TaskPlanningBloc>();

  @override
  void initState() {
    _taskPlanningBloc
        .add(TaskPlanningEvent.started(programId: widget.programId!));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TaskPlanningBloc, TaskPlanningState>(
      buildWhen: (previous, current) =>
          current is! TaskPlanningStateJoinedProgramError,
      listener: (context, state) {
        switch (state) {
          case TaskPlanningStateJoinedProgram():
            context.go('/main');
            break;
          case TaskPlanningStateJoinedProgramError():
            _taskPlanningBloc
                .add(TaskPlanningEvent.started(programId: widget.programId!));
          default:
        }
      },
      builder: (context, state) {
        switch (state) {
          case TaskPlanningStateInitial():
            return const LoadingScreen();
          case TaskPlanningStateLoading():
            return _tasksLoading();
          case TaskPlanningStateLoadedSuccess(:final tasks):
            return _tasksLoadedSuccess(tasks);
          case TaskPlanningStateEmpty():
            return _tasksEmpty(<Task>[]);
          case TaskPlanningStateError():
            return _tasksEmpty(<Task>[]);
          case TaskPlanningStateJoinedProgram():
            return const LoadingScreen();
          default:
            return Container();
        }
      },
    );
  }

  Widget _tasksLoading() {
    return GetGoalSubScaffold(
      appbarTitle: 'Tasks Planning',
      body: SizedBox(
        height: MediaQuery.of(context).size.height / 1.5,
        child: Center(
          child: CircularProgressIndicator(
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }

  Widget _tasksLoadedSuccess(List<Task> tasks) {
    return GetGoalSubScaffold(
      appbarTitle: 'Tasks Planning',
      body: SingleChildScrollView(
        child: Column(
          children: [
            _tasksSection(tasks),
            const SizedBox(height: 36),
          ],
        ),
      ),
      bottomNavigationBar: _bottomButton(tasks),
    );
  }

  Widget _tasksEmpty(List<Task> tasks) {
    return GetGoalSubScaffold(
      appbarTitle: 'Tasks Planning',
      body: SizedBox(
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
      ),
      bottomNavigationBar: _bottomButton(tasks),
    );
  }

  Widget _tasksSection(List<Task> tasks) {
    return Container(
      margin: EdgeInsets.only(
        top: AppSpacing.appMargin,
        right: AppSpacing.appMargin,
        bottom: 0,
        left: AppSpacing.appMargin,
      ),
      child: ListView.builder(
        clipBehavior: Clip.none,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return Container(
            margin: index != tasks.length - 1
                ? const EdgeInsets.only(bottom: 16)
                : const EdgeInsets.only(bottom: 0),
            child: TaskPlanningCard(
              taskNumber: index + 1,
              taskName: tasks[index].taskName!,
              startTime: tasks[index].startTime,
            ),
          );
        },
      ),
    );
  }

  Widget _bottomButton(List<Task> tasks) {
    bool isTaskEmpty = tasks.isEmpty;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 36),
      margin: EdgeInsets.symmetric(horizontal: AppSpacing.appMargin),
      child: MainButton(
        buttonText: isTaskEmpty ? 'Back' : 'Done',
        onTap: () {
          if (isTaskEmpty) {
            context.pop();
            return;
          }
          _taskPlanningBloc.add(
            TaskPlanningEvent.created(
              tasks: tasks,
              programId: widget.programId!,
            ),
          );
        },
      ),
    );
  }
}
