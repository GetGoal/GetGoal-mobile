import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../config/i18n/strings.g.dart';
import '../../../../../shared/icon.dart';
import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/spacing.dart';
import '../../../../../shared/widgets/button/circle_button.dart';
import '../../../../../shared/widgets/icon/custom_icon.dart';
import '../../../domain/entities/program.dart';
import '../../../domain/entities/program_filter.dart';
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

  final _searchController = TextEditingController();

  @override
  void initState() {
    _filterProgramBloc.add(const FilterProgramEvent.started());
    _programBloc.add(const ProgramEvent.started());
    _searchController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
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
          case FilterProgramStateHide():
            return Container();
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
            return _programLoading();
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
          case ProgramStateSearchEmpty():
            return _programSearchEmpty();
          default:
            return Container();
        }
      },
    );
  }

  Widget _filterBarLoading() {
    return Container(
      margin: EdgeInsets.only(
        left: AppSpacing.appMargin,
        bottom: AppSpacing.appMargin,
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
        left: AppSpacing.appMargin,
        bottom: AppSpacing.appMargin,
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
                _searchController.clear();
                _onProgramFilterTapped(
                  labelList: labelList,
                  filterSelected: filterSelected,
                  index: index,
                );
              },
            ),
          );
        },
      ),
    );
  }

  Widget _filterBarError() {
    return Container(
      margin: EdgeInsets.only(
        bottom: AppSpacing.appMargin,
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
    return Expanded(
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
          child: Column(
            children: [
              _searchBar(),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: AppSpacing.appMargin),
                shrinkWrap: true,
                itemCount: programList.length,
                itemBuilder: (context, index) {
                  bool isLabelEmpty = programList[index].labels!.isEmpty;
                  return ProgramCard(
                    programImage: programList[index].programImage,
                    programName: programList[index].programName,
                    programDesc: programList[index].programDesc,
                    rating: programList[index].rating,
                    duration: programList[index].expectedTime,
                    label: isLabelEmpty
                        ? const Label(labelName: 'Unknow')
                        : programList[index].labels![0],
                    createdAt: programList[index].updatedAt,
                    actionButton: CircleButton(
                      size: 36,
                      icon: CustomIcon(
                        icon: AppIcon.bookmark_icon,
                        size: 24,
                        iconColor: AppColors.description,
                      ),
                    ),
                    onTab: () {
                      context.push(
                        '/program_info/${programList[index].programId}',
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _programEmpty() {
    return const Expanded(
      child: Center(
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

  Widget _programSearchEmpty() {
    return Column(
      children: [
        _searchBar(),
        const Text(
          "Sorry, we couldn't find anything that includes \nall the words you searched for.",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _searchBar() {
    bool isSearchTextEmpty = _searchController.text.isEmpty;

    return Container(
      margin: const EdgeInsets.all(20),
      height: 56,
      decoration: BoxDecoration(boxShadow: AppShadow.shadow),
      child: TextField(
        onTap: () {
          _programBloc.add(const ProgramEvent.searching());
          _filterProgramBloc.add(const FilterProgramEvent.hided());
        },
        onSubmitted: (value) {
          if (value.trim().isEmpty) {
            _filterProgramBloc.add(const FilterProgramEvent.started());
            _programBloc.add(const ProgramEvent.started());
            return;
          }
          _programBloc.add(ProgramEvent.searchProgram(text: value));
        },
        controller: _searchController,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          isDense: true,
          hintText: Translations.of(context).program.search,
          fillColor: AppColors.white,
          filled: true,
          prefixIconColor: AppColors.description,
          prefixIcon: Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SvgPicture.asset(
              AppIcon.search_icon,
              fit: BoxFit.scaleDown,
              width: 24,
            ),
          ),
          suffixIcon: isSearchTextEmpty
              ? const SizedBox()
              : IconButton(
                  onPressed: () {
                    _programBloc.add(const ProgramEvent.started());
                    _filterProgramBloc.add(const FilterProgramEvent.started());
                    _searchController.clear();
                  },
                  icon: const Icon(Icons.cancel),
                ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(36)),
            borderSide: BorderSide(color: AppColors.strock, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(36)),
            borderSide: BorderSide(color: AppColors.primary, width: 1),
          ),
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
          _programBloc.add(
            ProgramEvent.filterClicked(
              labelName: labelList[index].labelName!,
            ),
          );
      }
    }
  }
}
