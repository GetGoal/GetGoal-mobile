import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/i18n/strings.g.dart';
import '../../../../../config/route_config.dart';
import '../../../../../shared/app_cache.dart';
import '../../../../../shared/icon.dart';
import '../../../../../shared/mixins/validation/auth_validation_mixin.dart';
import '../../../../../shared/themes/color.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/dialog/error_dialog.dart';
import '../../../../../shared/widgets/icon/custom_icon.dart';
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

  bool isShowPassword = false;

  @override
  void dispose() {
    _emailInputController.dispose();
    super.dispose();
  }

  void _setShowPasswordState() {
    setState(() {
      isShowPassword = !isShowPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetGoalScaffold(
      appbarTitle: context.t.new_password.page_title,
      pageDescription: 'Please fill your new password below',
      isGredientBackground: true,
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Expanded(child: _buildNewPasswordInputField()),
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
        isPassword: isShowPassword,
        suffixIcon: GestureDetector(
          onTap: _setShowPasswordState,
          child: isShowPassword
              ? CustomIcon(
                  icon: AppIcon.show_password,
                  iconColor: AppColors.description,
                )
              : CustomIcon(
                  icon: AppIcon.hide_password,
                  iconColor: AppColors.description,
                ),
        ),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return BlocConsumer<NewPasswordBloc, NewPasswordState>(
      listener: (context, state) async {
        switch (state) {
          case NewPasswordStateSuccess():
            await showDialog(
              context: context,
              builder: (context) => const ErrorDialog(
                title: 'Complete!',
                errorMessage: 'Your password has changed',
              ),
            );
            if (!mounted) return;

            AppCache.userEmail = '';
            context.go(Routes.landingPage);
            break;

          case NewPasswordStateFailure(:final message):
            await showDialog(
              context: context,
              builder: (context) => ErrorDialog(
                errorMessage: message,
              ),
            );
            break;
          default:
        }
      },
      builder: (context, state) {
        switch (state) {
          case NewPasswordStateLoading():
            return const MainButton(isLoading: true);
          default:
            return MainButton(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  _newPasswordBloc.add(
                    NewPasswordEvent.onSubmited(
                      email: AppCache.userEmail,
                      password: _emailInputController.text,
                    ),
                  );
                }
              },
              buttonText: 'Confirm',
            );
        }
      },
    );
  }
}
