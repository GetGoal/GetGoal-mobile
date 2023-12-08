import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../../../shared/icon.dart';
import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/font.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/image/cache_image.dart';
import '../../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';
import '../../../../task/domain/models/task.dart';
import '../../../domain/models/program.dart';
import '../../bloc/program_info/program_info_bloc.dart';
import '../program/widgets/program_label.dart';
import 'widgets/task_card_widget.dart';

class ProgramInfoPage extends StatefulWidget {
  const ProgramInfoPage({super.key, this.programId});

  @override
  State<ProgramInfoPage> createState() => _ProgramInfoPageState();

  final String? programId;
}

class _ProgramInfoPageState extends State<ProgramInfoPage> {
  ProgramInfoBloc get _programInfoBloc => context.read<ProgramInfoBloc>();

  @override
  void initState() {
    _programInfoBloc.add(ProgramInfoEvent.started(programId: widget.programId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetGoalSubScaffold(
      body: RefreshIndicator(
        color: AppColors.primary,
        onRefresh: () async => _programInfoBloc
            .add(ProgramInfoEvent.started(programId: widget.programId)),
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                _programInfoSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _programInfoSection() {
    return BlocBuilder<ProgramInfoBloc, ProgramInfoState>(
      builder: (context, state) {
        switch (state) {
          case ProgramInfoStateInitial():
            return Container();
          case ProgramInfoStateLoading():
            return _programInfoLoading();
          case ProgramInfoStateLoadedSuccess(:final program):
            return _programInfoLoadedSuccess(program!);
          case ProgramInfoStateError():
            return _programInfoError();
          default:
            return _programInfoError();
        }
      },
    );
  }

  Widget _programInfoLoading() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
      child: Center(
        child: CircularProgressIndicator(
          color: AppColors.primary,
        ),
      ),
    );
  }

  Widget _programInfoLoadedSuccess(Program program) {
    return Column(
      children: [
        _programImage(program.programImage!),
        const SizedBox(height: 20),
        _programHeader(
          label: program.labels![0],
          programName: program.programName,
          duration: program.expectedTime,
        ),
        const SizedBox(height: 20),
        _programDescription(program.programDesc),
        const SizedBox(height: 20),
        _taskOverview(program.tasks),
        const SizedBox(height: 40),
        _startProgramBotton(program.tasks!),
        const SizedBox(height: 36),
      ],
    );
  }

  Widget _programInfoError() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Some error occur. Please retry'),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () => context.pop(),
              child: const Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _programImage(String? programImage) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 234,
      child: CacheImage(
        programImage: programImage ?? '',
        radius: 24,
      ),
    );
  }

  Widget _programHeader({
    required Label? label,
    required String? duration,
    required String? programName,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Row(
              children: [
                ProgramLebel(title: label!.labelName ?? ''),
                const SizedBox(width: 8),
                Text(DateFormat('yMMMd').format(DateTime.now())),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                SvgPicture.asset(
                  AppIcon.program_duration_icon,
                  height: 16,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(duration ?? '', style: description()),
              ],
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          programName ?? '',
          style: heading3(),
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Thana Sriwichai',
                  style: description(),
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  child: Text(
                    'Follow',
                    style: description().copyWith(color: AppColors.primary),
                  ),
                ),
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => {},
              child: SvgPicture.asset(AppIcon.bookmark_icon),
            ),
          ],
        ),
      ],
    );
  }

  Widget _programDescription(String? programDesc) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        programDesc ?? '',
        maxLines: 6,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _taskOverview(List<Task>? tasks) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: const BorderRadius.all(Radius.circular(24)),
          ),
          width: double.infinity,
          height: 60,
          child: Text(
            'Tasks Overview',
            style: title1(),
          ),
        ),
        const SizedBox(height: 16),
        Column(
          children: List<TaskCard>.generate(
            tasks!.length,
            (index) => TaskCard(
              number: index + 1,
              taskName: tasks[index].taskName,
            ),
          ),
        ),
      ],
    );
  }

  Widget _startProgramBotton(List<Task> tasks) {
    return MainButton(
      buttonText: 'Start this program',
      onTap: () {
        context.push('/task_planning', extra: tasks);
      },
    );
  }
}
