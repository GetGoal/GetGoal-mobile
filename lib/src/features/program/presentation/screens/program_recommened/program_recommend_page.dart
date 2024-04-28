import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/spacing.dart';
import '../../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';
import '../../bloc/program/program_bloc.dart';
import '../../bloc/recommened_program/recommended_program_bloc.dart';
import '../program/widgets/program_card.dart';

class ProgramRecommededPage extends StatefulWidget {
  const ProgramRecommededPage({super.key});

  @override
  State<ProgramRecommededPage> createState() => _ProgramRecommededPageState();
}

class _ProgramRecommededPageState extends State<ProgramRecommededPage> {
  RecommendedProgramBloc get _recommendedProgramBloc =>
      context.read<RecommendedProgramBloc>();
  ProgramBloc get _programBloc => context.read<ProgramBloc>();

  @override
  void initState() {
    _recommendedProgramBloc.add(const RecommendedProgramEvent.started());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetGoalSubScaffold(
      appbarTitle: 'Recommended',
      body: BlocConsumer<RecommendedProgramBloc, RecommendedProgramState>(
        listener: (context, state) {},
        builder: (context, state) {
          switch (state) {
            case RecommendedProgramStateInitial():
              return const SizedBox();
            case RecommendedProgramStateLoading():
              return _programRecommendedLoading();
            case RecommendedProgramStateSuccess(:final programs):
              return SingleChildScrollView(
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    color: AppColors.stroke,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  padding:
                      EdgeInsets.symmetric(horizontal: AppSpacing.appMargin),
                  shrinkWrap: true,
                  itemCount: programs.length,
                  itemBuilder: (context, index) {
                    return ProgramCard(
                      programImage: programs[index].programImage,
                      programName: programs[index].programName,
                      programDesc: programs[index].programDesc,
                      rating: programs[index].rating,
                      duration: programs[index].expectedTime,
                      label: programs[index].labels![0],
                      createdAt: programs[index].updatedAt,
                      isSaved: programs[index].isSaved,
                      owner: programs[index].owner,
                      onTab: () {
                        context.push(
                          '/program_info/${programs[index].programId}',
                        );
                      },
                      onSave: () {
                        _programBloc.add(
                          ProgramEvent.saveProgram(
                            programId: programs[index].programId.toString(),
                          ),
                        );
                      },
                    );
                  },
                ),
              );
            case RecommendedProgramStateFailure():
              return _programRecommendError();
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }

  Widget _programRecommendedLoading() {
    return SizedBox(
      height: 320,
      child: Center(
        child: CircularProgressIndicator(
          color: AppColors.primary2,
        ),
      ),
    );
  }

  Widget _programRecommendError() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.stroke,
          ),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 36,
            ),
            const Text('Some error occur. Please retry'),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                _recommendedProgramBloc
                    .add(const RecommendedProgramEvent.started());
              },
              child: const Text('Reload'),
            ),
            const SizedBox(
              height: 36,
            ),
          ],
        ),
      ),
    );
  }
}
