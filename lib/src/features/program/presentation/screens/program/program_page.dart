import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../config/i18n/strings.g.dart';
import '../../../../../config/route_config.dart';
import '../../../../../shared/icon.dart';
import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/font.dart';
import '../../../../../shared/themes/spacing.dart';
import '../../../../../shared/widgets/icon/custom_icon.dart';
import '../../../../../shared/widgets/text/get_goal_gradient_text.dart';
import '../../../domain/entities/program_filter.dart';
import '../../bloc/filter_program/filter_program_bloc.dart';
import '../../bloc/program/program_bloc.dart';
import '../../bloc/program_section/program_section_bloc.dart';
import '../../bloc/recommened_program/recommended_program_bloc.dart';
import 'widgets/filter_item.dart';
import 'widgets/program_card.dart';
import 'widgets/program_recommended_card.dart';

class ProgramPage extends StatefulWidget {
  const ProgramPage({super.key});

  @override
  State<ProgramPage> createState() => _ProgramPageState();
}

class _ProgramPageState extends State<ProgramPage> {
  FilterProgramBloc get _filterProgramBloc => context.read<FilterProgramBloc>();
  ProgramBloc get _programBloc => context.read<ProgramBloc>();
  ProgramSectionBloc get _programSectionBloc =>
      context.read<ProgramSectionBloc>();
  RecommendedProgramBloc get _recommendedProgramBloc =>
      context.read<RecommendedProgramBloc>();

  final _searchController = TextEditingController();

  @override
  void initState() {
    _filterProgramBloc.add(const FilterProgramEvent.started());
    _programSectionBloc.add(const ProgramSectionEvent.started());
    _recommendedProgramBloc.add(const RecommendedProgramEvent.started());
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
        _programSection(),
      ],
    );
  }

  Widget _pageTitle() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppSpacing.appMargin),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                t.navbar.program,
                style: title1Bold().copyWith(color: AppColors.white),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => context.pushNamed(Routes.programSearch),
                child: const CustomIcon(icon: AppIcon.search_icon),
              ),
            ],
          ),
          Text(
            Translations.of(context).program.page_description,
            style: caption2Regular().copyWith(
              color: AppColors.description,
            ),
            maxLines: 2,
          ),
        ],
      ),
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
    return BlocBuilder<ProgramSectionBloc, ProgramSectionState>(
      builder: (context, state) {
        switch (state) {
          case ProgramSectionStateInitial():
            return const SizedBox();
          case ProgramSectionStateLoading():
            return _programLoading();
          case ProgramSectionStateSuccess():
            return _programLoadedSuccess();
          case ProgramSectionStateFailure():
            return _programError();
          case ProgramSectionStateHide():
            return _programSearchEmpty();
          default:
            return const SizedBox();
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
          color: AppColors.primary2,
        ),
      ),
    );
  }

  Widget _programLoadedSuccess() {
    return Expanded(
      child: RefreshIndicator(
        color: AppColors.primary2,
        backgroundColor: AppColors.secondary,
        onRefresh: () async {
          _programBloc.add(const ProgramEvent.started());
          _recommendedProgramBloc.add(const RecommendedProgramEvent.started());
        },
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _pageTitle(),
                const SizedBox(height: 36),
                _buildRecommendProgram(),
                const SizedBox(height: 24),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppSpacing.appMargin),
                  child: Text(
                    t.program.explore_program,
                    style: title2Bold(),
                  ),
                ),
                const SizedBox(height: 16),
                _filterBar(),
                _buildExploreProgram(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRecommendProgram() {
    return BlocConsumer<RecommendedProgramBloc, RecommendedProgramState>(
      listener: (context, state) {},
      builder: (context, state) {
        switch (state) {
          case RecommendedProgramStateInitial():
            return const SizedBox();
          case RecommendedProgramStateLoading():
            return const SizedBox();
          case RecommendedProgramStateSuccess(:final programs):
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: AppSpacing.appMargin,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        t.program.recommended_program,
                        style: title2Bold(),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: GetGoalGradientText(
                          t.program.see_all,
                          style: caption1Regular(),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 320,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: AppColors.stroke,
                      ),
                    ),
                  ),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 16),
                    padding:
                        EdgeInsets.symmetric(horizontal: AppSpacing.appMargin),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ProgramRecommendedCard(
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
                ),
              ],
            );
          case RecommendedProgramStateFailure():
            return const SizedBox();
          default:
            return const SizedBox();
        }
      },
    );
  }

  Widget _buildExploreProgram() {
    return BlocConsumer<ProgramBloc, ProgramState>(
      listener: (context, state) {},
      builder: (context, state) {
        switch (state) {
          case ProgramStateInital():
            return const SizedBox();
          case ProgramStateLoading():
            return const SizedBox();
          case ProgramStateLoadedSuccess(:final programs):
            return ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: AppColors.stroke,
              ),
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: AppSpacing.appMargin),
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
            );
          case ProgramStateError():
            return const SizedBox();
          default:
            return const SizedBox();
        }
      },
    );
  }

  Widget _programEmpty() {
    return Expanded(
      child: Center(
        child: Text(
          "Sorry, we don't have any program on this category\nright now",
          textAlign: TextAlign.center,
          style: subHeadlineRegular().copyWith(color: AppColors.description),
        ),
      ),
    );
  }

  Widget _programError() {
    return Expanded(
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
                _recommendedProgramBloc
                    .add(const RecommendedProgramEvent.started());
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
        Text(
          "Sorry, we couldn't find anything that includes \nall the words you searched for.",
          textAlign: TextAlign.center,
          style: footnoteRegular().copyWith(color: AppColors.description),
        ),
      ],
    );
  }

  Widget _searchBar() {
    bool isSearchTextEmpty = _searchController.text.isEmpty;

    return Container(
      height: 40,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.appMargin),
      child: TextField(
        style: subHeadlineRegular().copyWith(color: AppColors.white),
        onTap: () {
          _filterProgramBloc.add(const FilterProgramEvent.hided());
          // _programSectionBloc.add(const ProgramSectionEvent.onSearch());
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
        maxLines: 1,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          hintText: Translations.of(context).program.search,
          hintStyle: subHeadlineRegular().copyWith(
            color: AppColors.description,
          ),
          fillColor: AppColors.background,
          filled: true,
          prefixIcon: Container(
            padding: const EdgeInsets.all(8),
            child: CustomIcon(
              icon: AppIcon.search_icon,
              size: 16,
              iconColor: AppColors.description,
            ),
          ),
          suffixIcon: isSearchTextEmpty
              ? const SizedBox()
              : IconButton(
                  onPressed: () {
                    _programSectionBloc
                        .add(const ProgramSectionEvent.started());
                    _filterProgramBloc.add(const FilterProgramEvent.started());
                    _searchController.clear();
                  },
                  icon: Icon(
                    Icons.cancel,
                    color: AppColors.white,
                  ),
                ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(36)),
            borderSide: BorderSide(color: AppColors.stroke, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(36)),
            borderSide: BorderSide(color: AppColors.primary2, width: 1),
          ),
        ),
        onTapOutside: (value) {
          FocusScope.of(context).requestFocus(FocusNode());
        },
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
          _programBloc.add(const ProgramEvent.getAllProgram());
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
