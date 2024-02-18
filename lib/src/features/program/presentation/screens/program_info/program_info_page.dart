import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../../../config/i18n/strings.g.dart';
import '../../../../../shared/icon.dart';
import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/font.dart';
import '../../../../../shared/themes/spacing.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/image/cache_image.dart';
import '../../../../../shared/widgets/loading_screen_widget.dart';
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

  List<Task> tasks = [];

  @override
  void initState() {
    _programInfoBloc.add(ProgramInfoEvent.started(programId: widget.programId));
    _programInfoBloc.stream.listen(
      (state) {
        if (state is ProgramInfoStateLoadedSuccess) {
          setState(() {
            tasks = state.program!.tasks!;
          });
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProgramInfoBloc, ProgramInfoState>(
      builder: (context, state) {
        switch (state) {
          case ProgramInfoStateInitial():
            return const LoadingScreen();
          case ProgramInfoStateLoading():
            return const LoadingScreen();
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
    return GetGoalSubScaffold(
      body: SizedBox(
        child: Center(
          child: CircularProgressIndicator(
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }

  Widget _programInfoLoadedSuccess(Program program) {
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
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _startProgramBotton(program.tasks!),
    );
  }

  Widget _programInfoError() {
    return GetGoalSubScaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height / 1.5,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Translations.of(context).program.program_error,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 24),
        margin: EdgeInsets.symmetric(horizontal: AppSpacing.appMargin),
        child: MainButton(
          buttonText: 'Back',
          onTap: () => context.pop(),
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
                Text('${duration ?? 0}', style: description()),
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
            Translations.of(context).program.task_overview,
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
    bool isTasksEmpty = tasks.isEmpty;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      margin: EdgeInsets.symmetric(horizontal: AppSpacing.appMargin),
      child: MainButton(
        buttonText: isTasksEmpty
            ? 'Back'
            : Translations.of(context).program.start_program,
        onTap: () {
          if (isTasksEmpty) {
            context.pop();
          } else {
            context.push(
              '/task_planning/${widget.programId}',
            );
          }
        },
      ),
    );
  }
}
