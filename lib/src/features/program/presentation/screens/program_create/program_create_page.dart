import 'dart:io';

import 'package:flutter/material.dart';
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
import '../../../domain/models/program.dart';
import '../../../domain/models/program_create.dart';
import '../../enum/program_form_mode.enum.dart';


class ProgramCreatePage extends StatefulWidget {
  const ProgramCreatePage({
    super.key,
    this.mode,
  });

  @override
  State<ProgramCreatePage> createState() => _ProgramCreatePageState();

  final PROGRAMFORMMODE? mode;
}

class _ProgramCreatePageState extends State<ProgramCreatePage>
    with ProgramValidationMixin {
  final _formKey = GlobalKey<FormState>();
  final _programNameTextInputController = TextEditingController();
  final _programDescriptionTextInputController = TextEditingController();
  final _programCategoryTextInputController = TextEditingController();
  final _programExpectedTimeTextInputController = TextEditingController();
  String _imagePath = '';
  File _imageFile = File('');

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
      appbarTitle: getTitleName(widget.mode ?? PROGRAMFORMMODE.unknown),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(
            AppSpacing.appMargin,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _imageFile.path == ''
                    ? _buildUploadFileInput()
                    : _buildPreviewImage(),
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
          ),
        ),
      ),
    );
  }

  Widget _buildUploadFileInput() {
    return UploadFileInput(
      label: Translations.of(context).create_program.upload_your_image,
      onTap: () async {
        final image =
            await ImagePicker().pickImage(source: ImageSource.gallery);
        // final path = p.basename(image!.path).replaceFirst('image_picker_', '');

        setState(() {
          _imageFile = File(image!.path);
          _imagePath = image.path;
        });
      },
    );
  }

  Widget _buildPreviewImage() {
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
            imagePath: _imagePath,
            programName: _programNameTextInputController.text,
            programDescription: _programDescriptionTextInputController.text,
            category: [
              Label(labelName: _programCategoryTextInputController.text),
            ],
            expectedTime: _programExpectedTimeTextInputController.text,
          );

          AppCache.programCreate = program;

          context.pushNamed(Routes.programTaskCreatePage);
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
