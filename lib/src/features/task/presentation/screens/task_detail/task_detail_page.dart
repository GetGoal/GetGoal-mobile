import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/font.dart';
import '../../../../../shared/themes/spacing.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/error_screen_widget.dart';
import '../../../../../shared/widgets/loading_screen_widget.dart';
import '../../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';
import '../../../domain/entities/task.dart';
import '../../bloc/task_detail/task_detail_bloc.dart';

class TaskDetailPage extends StatefulWidget {
  const TaskDetailPage({
    super.key,
    this.taskId,
  });

  final String? taskId;

  @override
  State<TaskDetailPage> createState() => _TaskDetailPageState();
}

class _TaskDetailPageState extends State<TaskDetailPage> {
  TaskDetailBloc get _taskDetailBloc => context.read<TaskDetailBloc>();

  @override
  void initState() {
    _taskDetailBloc.add(TaskDetailEvent.started(taskId: widget.taskId!));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetGoalSubScaffold(
      appbarTitle: 'Task Detail',
      body: RefreshIndicator(
        color: AppColors.primary,
        onRefresh: () async {},
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(AppSpacing.appMargin),
            child: BlocConsumer<TaskDetailBloc, TaskDetailState>(
              listener: (context, state) {},
              builder: (context, state) {
                switch (state) {
                  case TaskDetailStateInitial():
                    return const LoadingScreen();
                  case TaskDetailStateLoading():
                    return const LoadingScreen();
                  case TaskDetailStateLoadedSuccess(:final task):
                    return _buildTaskDetailLoadedSuccess(task);
                  case TaskDetailStateError():
                    return const ErrorScreen();
                  default:
                    return const SizedBox();
                }
              },
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildButtonSection(widget.taskId!),
    );
  }

  Widget _buildTaskDetailLoadedSuccess(Task task) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTaskTitle(task.taskName!),
        const SizedBox(height: 20),
        _buildTaskDescription(task.taskDescription!),
        const SizedBox(height: 20),
        _buildTaskStartDate(task.startTime!),
        const SizedBox(height: 20),
        _buildTaskReminder(task.timeBeforeNotify!),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildTaskTitle(String taskName) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Task name',
          style: body1().copyWith(color: AppColors.description),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(taskName, style: heading3()),
      ],
    );
  }

  Widget _buildTaskDescription(String taskDesc) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: body1().copyWith(color: AppColors.description),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(taskDesc, style: body2()),
      ],
    );
  }

  Widget _buildTaskStartDate(String taskStartTime) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Date',
          style: body1().copyWith(color: AppColors.description),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          DateFormat.yMd().add_jm().format(DateTime.parse(taskStartTime)),
          style: body2(),
        ),
      ],
    );
  }

  Widget _buildTaskReminder(int taskNoti) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Reminder',
          style: body1().copyWith(color: AppColors.description),
        ),
        const SizedBox(
          height: 4,
        ),
        Text('$taskNoti Minute before start', style: body2()),
      ],
    );
  }

  Widget _buildButtonSection(String taskId) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      margin: EdgeInsets.symmetric(horizontal: AppSpacing.appMargin),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // MainButton(
          //   buttonText: 'Edit',
          //   onTap: () {},
          // ),
          // const SizedBox(height: 16),
          MainButton(
            buttonText: 'Delete',
            buttonColor: AppColors.white,
            textColor: AppColors.red,
            onTap: () {
              _taskDetailBloc
                  .add(TaskDetailEvent.onTappedDelete(taskId: taskId));
              context.pop(true);
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
