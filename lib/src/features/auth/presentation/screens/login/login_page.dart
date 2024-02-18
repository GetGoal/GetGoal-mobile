import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../shared/icon.dart';
import '../../../../../shared/mixins/validation/auth_validation_mixin.dart';
import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/font.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/text_field/normal_text_input_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with AuthValidationMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
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
      buttonColor: AppColors.white,
      isHaveBoxShadow: true,
      onTap: () {},
    );
  }

  Widget _buildEmailTextFieldInput() {
    return NormalTextInputField(
      label: 'Your Email',
      validator: loginEmailValidator,
    );
  }

  Widget _buildPasswordTextFieldInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const NormalTextInputField(label: 'Password'),
        const SizedBox(height: 8),
        GestureDetector(
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
        MainButton(
          buttonText: 'Continue',
          onTap: () {
            context.go('/main');
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
}
