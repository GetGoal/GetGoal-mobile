import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../../../config/route_config.dart';
import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/font.dart';
import '../../../../../shared/themes/spacing.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/error_screen_widget.dart';
import '../../../../../shared/widgets/loading_screen_widget.dart';
import '../../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';
import '../../../domain/entities/task.dart';
import '../../bloc/task_detail/task_detail_bloc.dart';
import '../../enum/task_form_mode_enum.dart';
import '../task_create/task_create_page.dart';

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
          style: bodyBold().copyWith(color: AppColors.description),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(taskName, style: bodyRegular().copyWith(color: AppColors.white)),
      ],
    );
  }

  Widget _buildTaskDescription(String taskDesc) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: bodyBold().copyWith(color: AppColors.description),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(taskDesc, style: bodyRegular().copyWith(color: AppColors.white)),
      ],
    );
  }

  Widget _buildTaskStartDate(String taskStartTime) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Date',
          style: bodyBold().copyWith(color: AppColors.description),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          DateFormat.yMd().add_jm().format(DateTime.parse(taskStartTime)),
          style: bodyRegular().copyWith(color: AppColors.white),
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
          style: bodyBold().copyWith(color: AppColors.description),
        ),
        const SizedBox(
          height: 4,
        ),
        Text('$taskNoti Minute before start',
            style: bodyRegular().copyWith(color: AppColors.white)),
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
          MainButton(
            buttonText: 'Edit',
            onTap: () async {
              bool? isRefreash = await context.pushNamed(
                Routes.taskCreatepage,
                extra: TaskCreatePageData(
                  mode: TASKFORMMODE.edit,
                  taskId: widget.taskId,
                ),
              );
              if (isRefreash!) {
                _taskDetailBloc
                    .add(TaskDetailEvent.started(taskId: widget.taskId!));
              }
            },
          ),
          const SizedBox(height: 16),
          MainButton(
            buttonText: 'Delete',
            buttonColor: [
              AppColors.secondary,
              AppColors.secondary,
            ],
            isHaveBoxShadow: true,
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
