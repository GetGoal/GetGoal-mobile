// ignore_for_file: require_trailing_commas

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/spacing.dart';
import '../../../domain/models/program.dart';
import '../../../domain/models/program_filter.dart';
import '../../bloc/filter_program/filter_program_bloc.dart';
import '../../bloc/program/program_bloc.dart';
import 'widgets/filter_item.dart';
import 'widgets/program_card.dart';

class ProgramPage extends StatefulWidget {
  const ProgramPage({super.key});

  @override
  State<ProgramPage> createState() => _ProgramPageState();
}

class _ProgramPageState extends State<ProgramPage> {
  FilterProgramBloc get _filterProgramBloc => context.read<FilterProgramBloc>();
  ProgramBloc get _programBloc => context.read<ProgramBloc>();

  @override
  void initState() {
    _filterProgramBloc.add(const FilterProgramEvent.started());
    _programBloc.add(const ProgramEvent.started());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        _filterBar(),
        _programSection(),
      ],
    );
  }

  Widget _filterBar() {
    return BlocBuilder<FilterProgramBloc, FilterProgramState>(
      builder: (context, state) {
        switch (state) {
          case FilterProgramStateInitial():
            return Container();
          case FilterProgramStateLoading():
            return _filterBarLoading();
          case FilterProgramStateLoadedSuccess(
              :final labels,
              :final selectedFilter
            ):
            return _filterBarLoadedSuccess(labels, selectedFilter);
          case FilterProgramStateError():
            return _filterBarError();
          default:
            return _filterBarLoading();
        }
      },
    );
  }

  Widget _programSection() {
    return BlocBuilder<ProgramBloc, ProgramState>(
      builder: (context, state) {
        switch (state) {
          case ProgramStateInital():
            return Container();
          case ProgramStateLoading():
            return _programLoading();
          case ProgramStateLoadedSuccess(
              :final programs,
            ):
            return _programLoadedSuccess(programs);
          case ProgramStateEmpty():
            return _programEmpty();
          case ProgramStateError():
            return _programError();
          default:
            return _programLoading();
        }
      },
    );
  }

  Widget _filterBarLoading() {
    return Container(
      margin: EdgeInsets.only(
        left: AppSpeacing.appMargin,
        bottom: AppSpeacing.appMargin,
      ),
      height: 32,
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        enabled: true,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              width: 96,
              height: 32,
              padding: const EdgeInsets.only(right: 8),
              child: const FilterItem(
                title: '',
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _filterBarLoadedSuccess(
    List<ProgramFilter> labelList,
    int filterSelected,
  ) {
    return Container(
      margin: EdgeInsets.only(
        left: AppSpeacing.appMargin,
        bottom: AppSpeacing.appMargin,
      ),
      height: 32,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: labelList.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.only(right: 8),
            child: FilterItem(
              title: labelList[index].labelName!,
              selected: filterSelected,
              currentIndex: index,
              onTapped: () => _onProgramFilterTapped(
                labelList: labelList,
                filterSelected: filterSelected,
                index: index,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _filterBarError() {
    return Container(
      margin: EdgeInsets.only(
        bottom: AppSpeacing.appMargin,
      ),
      alignment: Alignment.center,
      height: 32,
      child: ElevatedButton(
        onPressed: () {
          _filterProgramBloc.add(const FilterProgramEvent.started());
        },
        child: const Text('Reload'),
      ),
    );
  }

  Widget _programLoading() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
      child: Center(
        child: CircularProgressIndicator(
          color: AppColors.primary,
        ),
      ),
    );
  }

  Widget _programLoadedSuccess(List<Program> programList) {
    return Expanded(
      child: RefreshIndicator(
        color: AppColors.primary,
        onRefresh: () async => _programBloc.add(const ProgramEvent.started()),
        child: SingleChildScrollView(
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: AppSpeacing.appMargin),
            shrinkWrap: true,
            itemCount: programList.length,
            itemBuilder: (context, index) {
              return ProgramCard(
                programImage: programList[index].programImage,
                programName: programList[index].programName,
                programDesc: programList[index].programDesc,
                rating: programList[index].rating,
                duration: programList[index].expectedTime,
                label: programList[index].labels![0],
                onTab: () {
                  context.push('/program_info/${programList[index].programId}');
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _programEmpty() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
      child: const Center(
        child: Text(
          "Sorry, we don't have any program on this category\nright now",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _programError() {
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
              onPressed: () {
                _programBloc.add(const ProgramEvent.started());
              },
              child: const Text('Reload'),
            ),
          ],
        ),
      ),
    );
  }

  void _onProgramFilterTapped({
    required int index,
    required int filterSelected,
    required List<ProgramFilter> labelList,
  }) {
    if (filterSelected != index) {
      _filterProgramBloc.add(
        FilterProgramEvent.clicked(
          labels: labelList,
          selectedFilter: index,
        ),
      );
      switch (index) {
        case 0:
          break;
        case 1:
          _programBloc.add(const ProgramEvent.started());
          break;
        case 2:
          break;
        default:
          _programBloc.add(ProgramEvent.filterClicked(
              labelName: labelList[index].labelName!));
      }
    }
  }
}
