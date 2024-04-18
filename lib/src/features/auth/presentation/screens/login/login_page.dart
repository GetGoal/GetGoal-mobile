import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/route_config.dart';
import '../../../../../shared/mixins/validation/auth_validation_mixin.dart';
import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/font.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/dialog/error_dialog.dart';
import '../../../../../shared/widgets/scaffold/get_goal_scaffold.dart';
import '../../../../../shared/widgets/text_field/normal_text_input_field.dart';
import 'bloc/login/login_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with AuthValidationMixin {
  LoginBloc get _loginBloc => context.read<LoginBloc>();

  final _formKey = GlobalKey<FormState>();
  final _emailInputController = TextEditingController();
  final _passwordInputController = TextEditingController();

  @override
  void dispose() {
    _emailInputController.dispose();
    _passwordInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetGoalScaffold(
      isShowAppbar: true,
      appbarTitle: 'Login',
      isShowBackButton: true,
      isGredientBackground: true,
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Expanded(
              child: Column(
                children: [
                  _buildEmailTextFieldInput(),
                  const SizedBox(height: 20),
                  _buildPasswordTextFieldInput(),
                  const SizedBox(height: 32),
                ],
              ),
            ),
            _buildSubmitButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildEmailTextFieldInput() {
    return NormalTextInputField(
      controller: _emailInputController,
      label: 'Your Email',
      validator: emailValidator,
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget _buildPasswordTextFieldInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        NormalTextInputField(
          controller: _passwordInputController,
          label: 'Password',
          isPassword: true,
          validator: passwordValidator,
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () => context.pushNamed(Routes.forgetPasswordPage),
          child: Text(
            'Forgot password?',
            style: body2().copyWith(color: AppColors.primary),
          ),
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return Column(
      children: [
        BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            switch (state) {
              case LoginStateLoginSuccess():
                context.go(Routes.mainPage);
                break;
              case LoginStateLoginError(:final message):
                showDialog(
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
              case LoginStateInitial():
                return MainButton(
                  buttonText: 'Login',
                  onTap: login,
                );

              case LoginStateLoading():
                return const MainButton(isLoading: true);

              case LoginStateLoginSuccess():
                return const MainButton(isLoading: true);

              case LoginStateLoginError():
                return MainButton(
                  buttonText: 'Login',
                  onTap: login,
                );
              default:
                return const MainButton(buttonText: 'fsf');
            }
          },
        ),
      ],
    );
  }

  void login() {
    if (_formKey.currentState!.validate()) {
      _loginBloc.add(
        LoginEvent.onLogin(
          email: _emailInputController.text,
          password: _passwordInputController.text,
        ),
      );
    }
  }
}
