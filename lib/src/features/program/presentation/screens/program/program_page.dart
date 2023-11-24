import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../shared/themes/spacing.dart';
import '../../../domain/models/program_filter.dart';
import '../../bloc/filter_program/filter_program_bloc.dart';
import 'widgets/filter_item.dart';
// import 'widgets/program_card.dart';

class ProgramPage extends StatefulWidget {
  const ProgramPage({super.key});

  @override
  State<ProgramPage> createState() => _ProgramPageState();
}

class _ProgramPageState extends State<ProgramPage> {
  FilterProgramBloc get filterProgramBloc => context.read<FilterProgramBloc>();

  @override
  void initState() {
    filterProgramBloc.add(const FilterProgramEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        _filterBar(context),
        // _programSection(),
      ],
    );
  }

  Widget _filterBar(BuildContext context) {
    return BlocConsumer<FilterProgramBloc, FilterProgramState>(
      builder: (context, state) {
        return state.when(
          initial: () => Container(),
          loading: () => _filterBarLoading(),
          loadedSuccess: (labelList, selectedFilter) =>
              _filterBarLoadedSuccess(labelList, selectedFilter),
          error: () => _filterBarError(),
        );
      },
      listener: (context, state) {},
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
              onTapped: () {
                if (filterSelected != index) {
                  filterProgramBloc.add(
                    FilterProgramEvent.clicked(
                      labels: labelList,
                      selectedFilter: index,
                    ),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }

  Widget _filterBarError() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        left: AppSpeacing.appMargin,
        bottom: AppSpeacing.appMargin,
        right: AppSpeacing.appMargin,
      ),
      height: 32,
      child: ElevatedButton(
        onPressed: () =>
            filterProgramBloc.add(const FilterProgramEvent.started()),
        child: const Text('Reload'),
      ),
    );
  }

  // Widget _programSection() {
  //   return Container(
  //     margin: EdgeInsets.symmetric(horizontal: AppSpeacing.appMargin),
  //     child: const Column(
  //       children: [
  //         ProgramCard(),
  //       ],
  //     ),
  //   );
  // }
}
