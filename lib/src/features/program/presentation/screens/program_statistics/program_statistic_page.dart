import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/spacing.dart';
import '../../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';
import '../../bloc/program_statistics/program_statistics_bloc.dart';
import 'widgets/program_statics_card.dart';

class ProgramStatisticsPage extends StatefulWidget {
  const ProgramStatisticsPage({
    super.key,
    this.programId,
  });

  @override
  State<ProgramStatisticsPage> createState() => _ProgramStatisticsPageState();

  final String? programId;
}

class _ProgramStatisticsPageState extends State<ProgramStatisticsPage> {
  ProgramStatisticsBloc get _programStatisticsBloc =>
      context.read<ProgramStatisticsBloc>();

  @override
  void initState() {
    _programStatisticsBloc.add(
      ProgramStatisticsEvent.started(programId: widget.programId.toString()),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetGoalSubScaffold(
      appbarTitle: 'Statistics',
      body: RefreshIndicator(
        color: AppColors.primary,
        onRefresh: () async => (),
        child: Container(
          padding: EdgeInsets.all(AppSpacing.appMargin),
          child: _buildProgramCardGrid(),
        ),
      ),
    );
  }

  Widget _buildProgramCardGrid() {
    return BlocConsumer<ProgramStatisticsBloc, ProgramStatisticsState>(
      listener: (context, state) {},
      builder: (context, state) {
        switch (state) {
          case ProgramStatisticsStateInitial():
            return Expanded(
              child: Center(
                child: CircularProgressIndicator(
                  color: AppColors.primary2,
                ),
              ),
            );
          case ProgramStatisticsStateLoading():
            return Expanded(
              child: Center(
                child: CircularProgressIndicator(
                  color: AppColors.primary2,
                ),
              ),
            );
          case ProgramStatisticsStateSuccess(:final programStatistics):
            final date = programStatistics.lastJoined!.split('T');
            final lastJoined = date[0].split('-');
            bool isJoined = programStatistics.joined == 0;

            return ListView(
              children: [
                ProgramStatisticsCard(
                  label: 'Last Joined',
                  count: isJoined
                      ? '-'
                      : '${lastJoined[2]}/${lastJoined[1]}/${lastJoined[0]}',
                ),
                ProgramStatisticsCard(
                  label: 'Joined',
                  count: programStatistics.joined.toString(),
                ),
                ProgramStatisticsCard(
                  label: 'Viewed',
                  count: programStatistics.viewed.toString(),
                ),
                ProgramStatisticsCard(
                  label: 'Saved',
                  count: programStatistics.saved.toString(),
                ),
              ],
            );
          case ProgramStatisticsStateFailure():
          default:
            return const SizedBox();
        }
      },
    );
  }
}
