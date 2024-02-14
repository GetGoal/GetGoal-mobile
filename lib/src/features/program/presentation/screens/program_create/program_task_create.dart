import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../shared/icon.dart';
import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/font.dart';
import '../../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';
import '../../../../task/presentation/screens/task_planning/widgets/task_planning_card_widget.dart';

class ProgramTaskCreate extends StatefulWidget {
  const ProgramTaskCreate({super.key});

  @override
  State<ProgramTaskCreate> createState() => _ProgramTaskCreateState();
}

class _ProgramTaskCreateState extends State<ProgramTaskCreate> {
  @override
  Widget build(BuildContext context) {
    return GetGoalSubScaffold(
      appbarTitle: 'Create Task list',
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              _buildProgramTaskSection(),
              _buildCreateTaskButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProgramTaskSection() {
    return ListView.builder(
      clipBehavior: Clip.none,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Container(
          margin: index != 1
              ? const EdgeInsets.only(bottom: 20)
              : const EdgeInsets.only(bottom: 0),
          child: TaskPlanningCard(
            taskNumber: index + 1,
            taskName: 'tasks[index].taskName!',
            startTime: DateTime.now().toString(),
          ),
        );
      },
    );
  }

  Widget _buildCreateTaskButton() {
    return GestureDetector(
      onTap: () {},
      child: DottedBorder(
        dashPattern: const [4, 4],
        radius: const Radius.circular(16),
        padding: const EdgeInsets.all(16),
        borderType: BorderType.RRect,
        color: AppColors.description,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SvgPicture.asset(
                AppIcon.bottom_nav_add,
                fit: BoxFit.scaleDown,
                height: 36,
              ),
              const SizedBox(height: 4),
              Text(
                'Tap to create',
                style: description().copyWith(color: AppColors.primary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
