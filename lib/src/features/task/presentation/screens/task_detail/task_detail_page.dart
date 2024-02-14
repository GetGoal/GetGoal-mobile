import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/font.dart';
import '../../../../../shared/themes/spacing.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';

class TaskDetailPage extends StatefulWidget {
  const TaskDetailPage({super.key});

  @override
  State<TaskDetailPage> createState() => _TaskDetailPageState();
}

class _TaskDetailPageState extends State<TaskDetailPage> {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTaskTitle(),
                const SizedBox(height: 20),
                _buildTaskDescription(),
                const SizedBox(height: 20),
                _buildTaskStartDate(),
                const SizedBox(height: 20),
                _buildTaskReminder(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildButtonSection(),
    );
  }

  Widget _buildTaskTitle() {
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
        Text(
          'Tune Your Guitar',
          style: heading3(),
        ),
      ],
    );
  }

  Widget _buildTaskDescription() {
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
        Text(
          "Embark on a musical odyssey with 'Harmonious Journeys: A Melodic Expedition'. Dive into the world of acoustic guitar with captivating stories, expert tips, and soul-stirring melodies. Join us on this enchanting adventure as we explore the beauty of acoustic sounds and uncover the secrets to creating timeless tunes. ",
          style: body2(),
        ),
      ],
    );
  }

  Widget _buildTaskStartDate() {
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
          DateFormat.yMd().add_jm().format(DateTime.now()),
          style: body2(),
        ),
      ],
    );
  }

  Widget _buildTaskReminder() {
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
        Text('5 Minute before start', style: body2()),
      ],
    );
  }

  Widget _buildButtonSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      margin: EdgeInsets.symmetric(horizontal: AppSpacing.appMargin),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MainButton(
            buttonText: 'Edit',
            onTap: () {},
          ),
          const SizedBox(height: 16),
          MainButton(
            buttonText: 'Delete',
            buttonColor: AppColors.white,
            bottonStock: AppColors.stock,
            textColor: AppColors.red,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
