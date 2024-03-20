import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../config/i18n/strings.g.dart';
import '../../../../../shared/mixins/validation/auth_validation_mixin.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/scaffold/get_goal_scaffold.dart';
import '../../../../../shared/widgets/text_field/normal_text_input_field.dart';
import 'bloc/new_password/new_password_bloc.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage>
    with AuthValidationMixin {
  NewPasswordBloc get _newPasswordBloc => context.read<NewPasswordBloc>();

  final _formKey = GlobalKey<FormState>();
  final _emailInputController = TextEditingController();

  @override
  void dispose() {
    _emailInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetGoalScaffold(
      appbarTitle: context.t.forget_password.page_title,
      isGredientBackground: true,
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildNewPasswordInputField(),
            _buildSubmitButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildNewPasswordInputField() {
    return SizedBox(
      height: 124,
      child: NormalTextInputField(
        controller: _emailInputController,
        label: 'New password',
        validator: passwordValidator,
      ),
    );
  }

  Widget _buildSubmitButton() {
    return BlocConsumer<NewPasswordBloc, NewPasswordState>(
      listener: (context, state) {
        switch (state) {
          case NewPasswordStateSuccess():
          case NewPasswordStateFailure():
          default:
        }
      },
      builder: (context, state) {
        switch (state) {
          case NewPasswordStateLoading():
            return const MainButton(
              isLoading: true,
            );
          default:
            return MainButton(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  _newPasswordBloc.add(
                    const NewPasswordEvent.onSubmited(),
                  );
                }
              },
              buttonText: 'Continue',
            );
        }
      },
    );
  }
}
