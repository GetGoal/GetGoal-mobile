import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../config/i18n/strings.g.dart';
import '../../../../../shared/mixins/validation/auth_validation_mixin.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/scaffold/get_goal_scaffold.dart';
import '../../../../../shared/widgets/text_field/normal_text_input_field.dart';
import 'bloc/forget_password/forget_password_bloc.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage>
    with AuthValidationMixin {
  ForgetPasswordBloc get _forgetPasswordBloc =>
      context.read<ForgetPasswordBloc>();

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
            _buildEmailInputField(),
            _buildSubmitButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildEmailInputField() {
    return SizedBox(
      height: 124,
      child: NormalTextInputField(
        controller: _emailInputController,
        label: 'Enter your email',
        validator: emailValidator,
      ),
    );
  }

  Widget _buildSubmitButton() {
    return BlocConsumer<ForgetPasswordBloc, ForgetPasswordState>(
      listener: (context, state) {
        switch (state) {
          case ForgetPasswordStateSuccess():
          case ForgetPasswordStateFailure():
          default:
        }
      },
      builder: (context, state) {
        switch (state) {
          case ForgetPasswordStateLoading():
            return const MainButton(
              isLoading: true,
            );
          default:
            return MainButton(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  _forgetPasswordBloc.add(
                    const ForgetPasswordEvent.onSubmited(),
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
