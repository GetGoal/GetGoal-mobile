import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/i18n/strings.g.dart';
import '../../../../../shared/icon.dart';
import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/font.dart';
import '../../../../../shared/themes/spacing.dart';
import '../../../../../shared/widgets/icon/custom_icon.dart';
import '../../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';
import '../../bloc/program/program_bloc.dart';
import '../program/widgets/program_card.dart';

class ProgramSearchPage extends StatefulWidget {
  const ProgramSearchPage({super.key});

  @override
  State<ProgramSearchPage> createState() => _ProgramSearchPageState();
}

class _ProgramSearchPageState extends State<ProgramSearchPage> {
  ProgramBloc get _programBloc => context.read<ProgramBloc>();

  final _searchController = TextEditingController();
  final focusNode = FocusNode();

  @override
  void initState() {
    focusNode.requestFocus();
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetGoalSubScaffold(
      appbarTitle: 'Search',
      body: Column(
        children: [
          const SizedBox(height: 8),
          _searchBar(),
          const SizedBox(height: 16),
          _buildProgram(),
        ],
      ),
    );
  }

  Widget _searchBar() {
    bool isSearchTextEmpty = _searchController.text.isEmpty;

    return Container(
      height: 40,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.appMargin),
      child: TextField(
        focusNode: focusNode,
        style: subHeadlineRegular().copyWith(color: AppColors.white),
        onTap: () {},
        onSubmitted: (value) {
          if (value.trim().isEmpty) {
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
          hintText: t.program.search,
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
                    _programBloc.add(const ProgramEvent.started());
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
        onChanged: (value) {
          setState(() {
            _searchController.text = value;
          });
        },
      ),
    );
  }

  Widget _buildProgram() {
    return BlocConsumer<ProgramBloc, ProgramState>(
      listener: (context, state) {},
      builder: (context, state) {
        switch (state) {
          case ProgramStateInital():
            return const SizedBox();
          case ProgramStateLoading():
            return _programLoading();
          case ProgramStateLoadedSuccess(:final programs):
            return Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  color: AppColors.stroke,
                ),
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
              ),
            );
          case ProgramStateError():
            return const SizedBox();
          case ProgramStateSearchEmpty():
            return _programSearchEmpty();
          default:
            return const SizedBox();
        }
      },
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

  Widget _programSearchEmpty() {
    return Container(
      margin: const EdgeInsets.only(top: 36),
      child: Text(
        "Sorry, we couldn't find anything that includes \nall the words you searched for.",
        textAlign: TextAlign.center,
        style: footnoteRegular().copyWith(color: AppColors.description),
      ),
    );
  }
}
