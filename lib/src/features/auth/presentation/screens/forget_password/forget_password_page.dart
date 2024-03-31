import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/i18n/strings.g.dart';
import '../../../../../config/route_config.dart';
import '../../../../../shared/app_cache.dart';
import '../../../../../shared/mixins/validation/auth_validation_mixin.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/dialog/error_dialog.dart';
import '../../../../../shared/widgets/scaffold/get_goal_scaffold.dart';
import '../../../../../shared/widgets/text_field/normal_text_input_field.dart';
import '../verification/enum/verification_mode_enum.dart';
import '../verification/verification_page.dart';
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
            const SizedBox(height: 24),
            Expanded(child: _buildEmailInputField()),
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
      listener: (context, state) async {
        switch (state) {
          case ForgetPasswordStateSuccess(:final message):
            await showDialog(
              context: context,
              builder: (context) => ErrorDialog(
                errorMessage: message,
                title: 'Complete!',
              ),
            );
            if (!mounted) return;
            context.pushNamed(
              Routes.verificationPage,
              extra: VerificationPageData(
                mode: VERIFICATIONMODE.verifyPasswordReset,
              ),
            );
            break;
          case ForgetPasswordStateFailure():
            showDialog(
              context: context,
              builder: (context) => const ErrorDialog(
                errorMessage: 'Email invalid',
              ),
            );
            break;
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
                    ForgetPasswordEvent.onSubmited(
                      email: _emailInputController.text,
                    ),
                  );
                  AppCache.userEmail = _emailInputController.text;
                }
              },
              buttonText: 'Continue',
            );
        }
      },
    );
  }
}
