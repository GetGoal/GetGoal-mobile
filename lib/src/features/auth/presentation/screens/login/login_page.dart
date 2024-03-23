import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/route_config.dart';
import '../../../../../shared/icon.dart';
import '../../../../../shared/mixins/validation/auth_validation_mixin.dart';
import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/font.dart';
import '../../../../../shared/themes/spacing.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/dialog/error_dialog.dart';
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.appMargin),
        alignment: Alignment.center,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTextHeader(),
              const SizedBox(height: 40),
              _buildGoogleLoginButton(),
              const SizedBox(height: 20),
              Text('Or', style: description()),
              const SizedBox(height: 20),
              _buildEmailTextFieldInput(),
              const SizedBox(height: 20),
              _buildPasswordTextFieldInput(),
              const SizedBox(height: 32),
              _buildSubmitButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Welcome to', style: heading1()),
        Row(
          children: [
            Text('Get', style: heading1()),
            Text('Goal!', style: heading1().copyWith(color: AppColors.primary)),
          ],
        ),
        const Text('"Dream, Plan, Achieve with GetGoal!"'),
      ],
    );
  }

  Widget _buildGoogleLoginButton() {
    return MainButton(
      icon: SvgPicture.asset(
        AppIcon.google_icon,
        fit: BoxFit.scaleDown,
        height: 36,
      ),
      buttonText: 'Continue with Google',
      buttonColor: [AppColors.secondary, AppColors.secondary],
      isHaveBoxShadow: true,
      onTap: () {},
    );
  }

  Widget _buildEmailTextFieldInput() {
    return NormalTextInputField(
      controller: _emailInputController,
      label: 'Your Email',
      validator: emailValidator,
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
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account?",
              style: body1(),
            ),
            const SizedBox(
              width: 4,
            ),
            GestureDetector(
              onTap: () => context.pushNamed('/sign_up'),
              child: Text(
                'Create an account',
                style: body1().copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
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
