import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/i18n/strings.g.dart';
import '../../../../../config/route_config.dart';
import '../../../../../core/di.dart';
import '../../../../../shared/app_cache.dart';
import '../../../../../shared/bloc_state.dart';
import '../../../../../shared/icon.dart';
import '../../../../../shared/themes/color.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/dialog/error_dialog.dart';
import '../../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';
import '../../../../task/domain/models/task.dart';
import '../../../../task/presentation/enum/task_form_mode_enum.dart';
import '../../../../task/presentation/screens/task_create/task_create_page.dart';
import '../../../../task/presentation/screens/task_planning/widgets/task_planning_card_widget.dart';
import '../../../domain/models/program_create.dart';
import '../../../domain/usecases/program/create_program_usecase.dart';
import '../../enum/program_form_mode.enum.dart';
import 'bloc/program_create/program_create_bloc.dart';

class ProgramTaskCreate extends StatefulWidget {
  const ProgramTaskCreate({
    super.key,
  });

  @override
  State<ProgramTaskCreate> createState() => _ProgramTaskCreateState();
}

class _ProgramTaskCreateState extends State<ProgramTaskCreate> {
  CreateProgramBloc get _createProgramBloc => context.read<CreateProgramBloc>();

  List tasksList = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetGoalSubScaffold(
      appbarTitle: Translations.of(context).create_program.create_task_list,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              _buildProgramTaskSection(),
              AppCache.programTaskCreateList.length < 9
                  ? _buildCreateTaskButton()
                  : const SizedBox(),
              const SizedBox(height: 40),
              _buildSubmitButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProgramTaskSection() {
    return ListView.builder(
      clipBehavior: Clip.none,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: AppCache.programTaskCreateList.length,
      itemBuilder: (context, index) {
        return Container(
          margin: index != AppCache.programTaskCreateList.length - 1
              ? const EdgeInsets.only(bottom: 20)
              : const EdgeInsets.only(bottom: 0),
          child: TaskPlanningCard(
            taskNumber: index + 1,
            taskName: AppCache.programTaskCreateList[index].taskName!,
            startTime: DateTime.now().toString(),
            onEdit: () async {
              bool? isRefresh = await context.pushNamed(
                Routes.taskCreatepage,
                extra: TaskCreatePageData(
                  mode: TASKFORMMODE.programCreate,
                  task: AppCache.programTaskCreateList[index],
                  taskIndex: index,
                ),
              );

              if (isRefresh!) {
                setState(() {
                  tasksList = AppCache.programTaskCreateList;
                });
              }
            },
          ),
        );
      },
    );
  }

  Widget _buildCreateTaskButton() {
    return GestureDetector(
      onTap: () async {
        bool? isRefresh = await context.pushNamed(
          Routes.taskCreatepage,
          // extra: TASKFORMMODE.program,
          extra: TaskCreatePageData(
            mode: TASKFORMMODE.program,
          ),
        );
        if (isRefresh!) {
          setState(() {
            tasksList = AppCache.programTaskCreateList;
          });
        }
      },
      child: DottedBorder(
        dashPattern: const [4, 4],
        radius: const Radius.circular(16),
        padding: const EdgeInsets.all(24),
        borderType: BorderType.RRect,
        color: AppColors.description,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SvgPicture.asset(
                AppIcon.bottom_nav_add,
                fit: BoxFit.scaleDown,
                height: 36,
              ),
              const SizedBox(height: 4),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return BlocConsumer<CreateProgramBloc, CreateProgramState>(
      buildWhen: (previous, current) =>
          current is! CreateProgramStateCreatedError,
      listener: (context, state) async {
        switch (state) {
          case CreateProgramStateCreated():
            context.go(Routes.mainPage);
            break;
          case CreateProgramStateCreatedError(:final message):
            await showDialog(
              context: context,
              builder: (context) => ErrorDialog(errorMessage: message),
            );
            _createProgramBloc.add(const CreateProgramEvent.started());
            break;
          default:
        }
      },
      builder: (context, state) {
        switch (state) {
          case CreateProgramStateInitial():
            return MainButton(
              onTap: () {
                _createProgramBloc.add(
                  CreateProgramEvent.onCreate(
                    programData: AppCache.programCreate,
                  ),
                );
              },
              buttonText:
                  Translations.of(context).create_program.create_program,
            );
          case CreateProgramStateLoading():
            return const MainButton(isLoading: true);
          case CreateProgramStateCreated():
            return const MainButton(isLoading: true);
          case CreateProgramStateCreatedError():
          default:
            return MainButton(
              onTap: () {
                _createProgramBloc.add(
                  CreateProgramEvent.onCreate(
                    programData: AppCache.programCreate,
                  ),
                );
              },
              buttonText:
                  Translations.of(context).create_program.create_program,
            );
        }
      },
    );
  }
}
