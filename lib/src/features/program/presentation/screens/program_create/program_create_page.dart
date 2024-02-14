import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../shared/themes/spacing.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';
import '../../../../../shared/widgets/text_field/normal_text_input_field.dart';
import '../../../../../shared/widgets/text_field/upload_file_input.dart';
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

class _ProgramCreatePageState extends State<ProgramCreatePage> {
  final _formKey = GlobalKey<FormState>();

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
                _buildUploadFileInput(),
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
      onTap: () {},
    );
  }

  Widget _buildProgramNameFieldInput() {
    return NormalTextInputField(
      label: 'Program name',
      hintText: 'Ex. Make your own music in 3 Days',
    );
  }

  Widget _buildDescriptionFieldInput() {
    return NormalTextInputField(
      label: 'Description',
      hintText: 'Your description',
      maxLines: null,
    );
  }

  Widget _buildCategoryFieldInput() {
    return NormalTextInputField(
      label: 'Category',
      hintText: 'Ex. Music',
    );
  }

  Widget _buildExpectedTimeFieldInput() {
    return NormalTextInputField(
      label: 'Expected time',
      hintText: 'Ex. 3 Days',
    );
  }

  Widget _buildNextPageButton() {
    return MainButton(
      buttonText: 'Next',
      onTap: () {
        context.pushNamed('/program/create/task');
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
