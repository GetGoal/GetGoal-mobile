import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/route_config.dart';
import '../../../../../shared/app_cache.dart';
import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/font.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/dialog/error_dialog.dart';
import '../../../../../shared/widgets/scaffold/get_goal_scaffold.dart';
import '../../../../program/domain/entities/program_filter.dart';
import 'bloc/preference_list/preference_list_bloc.dart';
import 'bloc/update_user_label/update_user_label_bloc.dart';
import 'widgets/preference_chip.dart';

class PreferencePage extends StatefulWidget {
  const PreferencePage({super.key});

  @override
  State<PreferencePage> createState() => _PreferencePageState();
}

class _PreferencePageState extends State<PreferencePage> {
  UpdateUserLabelBloc get _updateUserLabelBloc =>
      context.read<UpdateUserLabelBloc>();
  PreferenceListBloc get _preferenceListBloc =>
      context.read<PreferenceListBloc>();

  @override
  void initState() {
    _preferenceListBloc.add(const PreferenceListEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetGoalScaffold(
      isGredientBackground: true,
      isShowAppbar: true,
      appbarTitle: 'What do you like?',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          Text(
            'Can select more than one.',
            style: footnoteRegular().copyWith(
              color: AppColors.description,
            ),
          ),
          const SizedBox(height: 24),
          _buildPreferenceSelection(),
          _buildSubmitButton(),
        ],
      ),
    );
  }

  Widget _buildPreferenceSelection() {
    return BlocConsumer<PreferenceListBloc, PreferenceListState>(
      listener: (context, state) {},
      builder: (context, state) {
        switch (state) {
          case PreferenceListStateInitial():
            return const SizedBox();

          case PreferenceListStateLoading():
            return const SizedBox();

          case PreferenceListStateSuccess(:final labels):
            return Expanded(
              child: Wrap(
                children: List<Widget>.generate(
                  labels.length,
                  (int index) {
                    return Container(
                      padding: const EdgeInsets.only(right: 8, bottom: 8),
                      child: PreferenceChip(
                        labelName: labels[index].labelName!,
                        isSelected: labels[index].isSelected!,
                        onTab: (bool isSelected) {
                          final labelList = labels.toList();
                          final label = ProgramFilter.label(
                            labelId: labels[index].labelId,
                            labelName: labels[index].labelName,
                            updatedAt: null,
                            isSelected: isSelected,
                          );
                          labelList[index] = label;
                          _preferenceListBloc.add(
                            PreferenceListEvent.onTapped(labels: labelList),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            );

          case PreferenceListStateFailure():
            return const SizedBox();

          default:
            return const SizedBox();
        }
      },
    );
  }

  Widget _buildSubmitButton() {
    return BlocConsumer<UpdateUserLabelBloc, UpdateUserLabelState>(
      listener: (context, state) {
        switch (state) {
          case UpdateUserLabelStateUpdated():
            context.go(Routes.mainPage);
            break;
          case UpdateUserLabelStateFailure(:final message):
            showDialog(
              context: context,
              builder: (context) => ErrorDialog(
                errorMessage: message,
              ),
            );
          default:
        }
      },
      builder: (context, state) {
        switch (state) {
          case UpdateUserLabelStateLoading():
            return const MainButton(isLoading: true);

          default:
            return MainButton(buttonText: 'Next', onTap: registerAccount);
        }
      },
    );
  }

  void registerAccount() {
    _updateUserLabelBloc.add(
      UpdateUserLabelEvent.onUpdated(labels: AppCache.preferenceList),
    );
  }
}
