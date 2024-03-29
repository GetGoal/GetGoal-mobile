import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../config/i18n/strings.g.dart';
import '../../../../../config/route_config.dart';
import '../../../../../shared/app_cache.dart';
import '../../../../../shared/icon.dart';
import '../../../../../shared/mixins/validation/program_validation_mixin.dart';
import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/spacing.dart';
import '../../../../../shared/widgets/button/circle_button.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/icon/custom_icon.dart';
import '../../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';
import '../../../../../shared/widgets/text_field/normal_text_input_field.dart';
import '../../../../../shared/widgets/text_field/upload_file_input.dart';
import '../../../domain/entities/program.dart';
import '../../../domain/entities/program_create.dart';
import '../../bloc/program_edit/program_edit_bloc.dart';
import '../../enum/program_form_mode.enum.dart';
import 'program_task_create.dart';

class ProgramCreatePageData {
  ProgramCreatePageData({
    this.mode,
    this.programId,
  });

  final PROGRAMFORMMODE? mode;
  final String? programId;
}

class ProgramCreatePage extends StatefulWidget {
  const ProgramCreatePage({
    super.key,
    this.pageData,
  });

  @override
  State<ProgramCreatePage> createState() => _ProgramCreatePageState();

  final ProgramCreatePageData? pageData;
}

class _ProgramCreatePageState extends State<ProgramCreatePage>
    with ProgramValidationMixin {
  ProgramEditBloc get _programEditBloc => context.read<ProgramEditBloc>();

  final _formKey = GlobalKey<FormState>();
  final _programNameTextInputController = TextEditingController();
  final _programDescriptionTextInputController = TextEditingController();
  final _programCategoryTextInputController = TextEditingController();
  final _programExpectedTimeTextInputController = TextEditingController();
  String _imagePath = '';
  File _imageFile = File('');
  String _firebaseImagePath = '';

  @override
  void initState() {
    _programEditBloc.add(
      ProgramEditEvent.started(programId: widget.pageData!.programId),
    );
    super.initState();
  }

  @override
  void dispose() {
    _programNameTextInputController.dispose();
    _programDescriptionTextInputController.dispose();
    _programCategoryTextInputController.dispose();
    _programExpectedTimeTextInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetGoalSubScaffold(
      appbarTitle: getTitleName(
        widget.pageData!.mode ?? PROGRAMFORMMODE.unknown,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(
            AppSpacing.appMargin,
          ),
          child: _buildProgramCreateForm(),
        ),
      ),
    );
  }

  Widget _buildProgramCreateForm() {
    return BlocConsumer<ProgramEditBloc, ProgramEditState>(
      listener: (context, state) {
        switch (state) {
          case ProgramEditStateInitial(:final program):
            if (program == null) return;
            // print(program.programImage);
            _firebaseImagePath = program.programImage!;
            _programNameTextInputController.text = program.programName!;
            if (program.programDesc != '') {
              _programDescriptionTextInputController.text =
                  program.programDesc!;
            }
            if (program.labels!.isNotEmpty) {
              _programCategoryTextInputController.text =
                  program.labels![0].labelName!;
            }

            _programExpectedTimeTextInputController.text =
                program.expectedTime!;

            AppCache.programTaskCreateList = program.tasks!;
            break;
        }
      },
      builder: (context, state) {
        switch (state) {
          case ProgramEditStateInitial():
            return _buildProgramCreateLoading();

          case ProgramEditStateLoading():
            return _buildProgramCreateLoading();

          case ProgramEditStateEditedSuccess():
            return Form(
              key: _formKey,
              child: Column(
                children: [
                  _buildProgramPreviewImage(),
                  const SizedBox(height: 20),
                  _buildProgramNameFieldInput(),
                  const SizedBox(height: 20),
                  _buildDescriptionFieldInput(),
                  const SizedBox(height: 20),
                  _buildCategoryFieldInput(),
                  const SizedBox(height: 20),
                  _buildExpectedTimeFieldInput(),
                  const SizedBox(height: 40),
                  _buildNextPageButton(),
                  const SizedBox(height: 20),
                ],
              ),
            );

          default:
            return const SizedBox();
        }
      },
    );
  }

  Widget _buildProgramPreviewImage() {
    // Display image from Firebase
    if (_firebaseImagePath != '') {
      return Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: 252,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                _firebaseImagePath,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Container(
              margin: const EdgeInsets.all(8),
              child: CircleButton(
                onTap: () {
                  setState(() {
                    _firebaseImagePath = '';
                  });
                },
                icon: CustomIcon(
                  icon: AppIcon.trash_icon,
                  size: 8,
                  iconColor: AppColors.red,
                ),
              ),
            ),
          ),
        ],
      );
    }

    // Display image from file that choose from user device
    if (_imageFile.path.isNotEmpty) {
      return Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: 252,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.file(
                _imageFile,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Container(
              margin: const EdgeInsets.all(8),
              child: CircleButton(
                onTap: () {
                  setState(() {
                    _imageFile = File('');
                  });
                },
                icon: CustomIcon(
                  icon: AppIcon.trash_icon,
                  size: 8,
                  iconColor: AppColors.red,
                ),
              ),
            ),
          ),
        ],
      );
    }

    return UploadFileInput(
      label: Translations.of(context).create_program.upload_your_image,
      onTap: () async {
        final image = await ImagePicker().pickImage(
          source: ImageSource.gallery,
        );

        setState(() {
          _imageFile = File(image!.path);
          _imagePath = image.path;
        });
      },
    );
  }

  Widget _buildProgramCreateLoading() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: CircularProgressIndicator(
          color: AppColors.primary,
        ),
      ),
    );
  }

  Widget _buildProgramNameFieldInput() {
    return NormalTextInputField(
      controller: _programNameTextInputController,
      label: Translations.of(context).create_program.program_name,
      hintText: Translations.of(context).create_program.ex_program_name,
      validator: programNameValidator,
    );
  }

  Widget _buildDescriptionFieldInput() {
    return NormalTextInputField(
      controller: _programDescriptionTextInputController,
      label: Translations.of(context).create_program.description,
      hintText: Translations.of(context).create_program.ex_description,
      maxLines: null,
      validator: programDescriptionValidator,
    );
  }

  Widget _buildCategoryFieldInput() {
    return NormalTextInputField(
      controller: _programCategoryTextInputController,
      label: Translations.of(context).create_program.category,
      hintText: Translations.of(context).create_program.ex_category,
      validator: programCategoryValidator,
    );
  }

  Widget _buildExpectedTimeFieldInput() {
    return NormalTextInputField(
      controller: _programExpectedTimeTextInputController,
      label: Translations.of(context).create_program.expected_time,
      hintText: Translations.of(context).create_program.ex_expected_time,
      validator: programExpectedTimeValidator,
    );
  }

  Widget _buildNextPageButton() {
    return MainButton(
      buttonText: Translations.of(context).create_program.next_button,
      onTap: () {
        if (_formKey.currentState!.validate()) {
          final ProgramCreate program = ProgramCreate(
            imagePath: _imagePath != '' ? _imagePath : _firebaseImagePath,
            programName: _programNameTextInputController.text,
            programDescription: _programDescriptionTextInputController.text,
            category: [
              Label(labelName: _programCategoryTextInputController.text),
            ],
            expectedTime: _programExpectedTimeTextInputController.text,
          );

          AppCache.programCreate = program;

          context.pushNamed(
            Routes.programTaskCreatePage,
            extra: ProgramTaskCreatePageData(
              mode: widget.pageData!.mode,
              programId: widget.pageData!.programId,
            ),
          );
        }
      },
    );
  }

  String getTitleName(PROGRAMFORMMODE mode) {
    switch (mode) {
      case PROGRAMFORMMODE.create:
        return Translations.of(context).create_program.create_program;
      case PROGRAMFORMMODE.edit:
        return Translations.of(context).edit_program.edit_program;
      default:
        return 'Unknown';
    }
  }
}
