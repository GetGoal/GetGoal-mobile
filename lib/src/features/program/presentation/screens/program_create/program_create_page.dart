import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../config/route_config.dart';
import '../../../../../shared/app_cache.dart';
import '../../../../../shared/icon.dart';
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
import 'program_task_create.dart';

class ProgramCreatePage extends StatefulWidget {
  const ProgramCreatePage({
    super.key,
    this.mode,
  });

  @override
  State<ProgramCreatePage> createState() => _ProgramCreatePageState();

  final PROGRAMFORMMODE? mode;
}

class _ProgramCreatePageState extends State<ProgramCreatePage> {
  final _formKey = GlobalKey<FormState>();
  final _programNameTextInputController = TextEditingController();
  final _programDescriptionTextInputController = TextEditingController();
  final _programCategoryTextInputController = TextEditingController();
  final _programExpectedTimeTextInputController = TextEditingController();
  final String _imagePath = '';
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
      label: 'Upload your image',
      onTap: () async {
        final image =
            await ImagePicker().pickImage(source: ImageSource.gallery);
        setState(() {
          _imageFile = File(image!.path);
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
      label: 'Program name',
      hintText: 'Ex. Make your own music in 3 Days',
    );
  }

  Widget _buildDescriptionFieldInput() {
    return NormalTextInputField(
      controller: _programDescriptionTextInputController,
      label: 'Description',
      hintText: 'Your description',
      maxLines: null,
    );
  }

  Widget _buildCategoryFieldInput() {
    return NormalTextInputField(
      controller: _programCategoryTextInputController,
      label: 'Category',
      hintText: 'Ex. Music',
    );
  }

  Widget _buildExpectedTimeFieldInput() {
    return NormalTextInputField(
      controller: _programExpectedTimeTextInputController,
      label: 'Expected time',
      hintText: 'Ex. 3 Days',
    );
  }

  Widget _buildNextPageButton() {
    return MainButton(
      buttonText: 'Next',
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
        return 'Create Program';
      case PROGRAMFORMMODE.edit:
        return 'Program Settings';
      default:
        return 'Unknown';
    }
  }
}
