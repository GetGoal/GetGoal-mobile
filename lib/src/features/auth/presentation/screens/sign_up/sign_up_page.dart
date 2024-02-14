import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';
import '../../../../../shared/widgets/text_field/normal_text_input_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return GetGoalSubScaffold(
      appbarTitle: 'Sign up',
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              _buildFirstNameTextFieldInput(),
              const SizedBox(height: 20),
              _buildLastNameTextFieldInput(),
              const SizedBox(height: 20),
              _buildEmailTextFieldInput(),
              const SizedBox(height: 20),
              _buildPasswordTextFieldInput(),
              const SizedBox(height: 20),
              _buildConfirmPasswordTextFieldInput(),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildSubmitButton(),
    );
  }

  Widget _buildFirstNameTextFieldInput() {
    return NormalTextInputField(
      label: 'First name',
      hintText: 'Your first name',
    );
  }

  Widget _buildLastNameTextFieldInput() {
    return NormalTextInputField(
      label: 'Last name',
      hintText: 'Your Last name',
    );
  }

  Widget _buildEmailTextFieldInput() {
    return NormalTextInputField(
      label: 'Email Address',
      hintText: 'example@mail.com',
    );
  }

  Widget _buildPasswordTextFieldInput() {
    return NormalTextInputField(
      label: 'Password',
    );
  }

  Widget _buildConfirmPasswordTextFieldInput() {
    return NormalTextInputField(label: 'Confirm password');
  }

  Widget _buildSubmitButton() {
    return Container(
      padding: const EdgeInsets.only(bottom: 40, right: 20, left: 20),
      child: MainButton(
        buttonText: 'Continue',
        onTap: () {
          context.pushNamed('/verification');
        },
      ),
    );
  }
}
