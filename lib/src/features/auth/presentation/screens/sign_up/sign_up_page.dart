import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/route_config.dart';
import '../../../../../shared/app_cache.dart';
import '../../../../../shared/mixins/validation/auth_validation_mixin.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/dialog/error_dialog.dart';
import '../../../../../shared/widgets/scaffold/get_goal_scaffold.dart';
import '../../../../../shared/widgets/text_field/normal_text_input_field.dart';
import '../../../domain/entity/create_user.dart';
import '../verification/enum/verification_mode_enum.dart';
import '../verification/verification_page.dart';
import 'bloc/create_account/create_account_bloc.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with AuthValidationMixin {
  CreateAccountBloc get _createAccountBloc => context.read<CreateAccountBloc>();

  final _formKey = GlobalKey<FormState>();
  final _firstNameTextField = TextEditingController();
  final _lastNameTextField = TextEditingController();
  final _emailTextField = TextEditingController();
  final _passwordTextField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetGoalScaffold(
      isGredientBackground: true,
      appbarTitle: 'Create an account',
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            const SizedBox(height: 24),
            Expanded(
              child: Column(
                children: [
                  _buildFirstNameTextFieldInput(),
                  const SizedBox(height: 20),
                  _buildLastNameTextFieldInput(),
                  const SizedBox(height: 20),
                  _buildEmailTextFieldInput(),
                  const SizedBox(height: 20),
                  _buildPasswordTextFieldInput(),
                ],
              ),
            ),
            _buildSubmitButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildFirstNameTextFieldInput() {
    return NormalTextInputField(
      controller: _firstNameTextField,
      label: 'First name',
      hintText: 'Your first name',
      validator: firstNameValidator,
    );
  }

  Widget _buildLastNameTextFieldInput() {
    return NormalTextInputField(
      controller: _lastNameTextField,
      label: 'Last name',
      hintText: 'Your Last name',
      validator: lastNameValidator,
    );
  }

  Widget _buildEmailTextFieldInput() {
    return NormalTextInputField(
      controller: _emailTextField,
      label: 'Email Address',
      hintText: 'example@mail.com',
      validator: emailValidator,
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget _buildPasswordTextFieldInput() {
    return NormalTextInputField(
      controller: _passwordTextField,
      label: 'Password',
      isPassword: true,
      validator: passwordValidator,
    );
  }

  Widget _buildSubmitButton() {
    return BlocConsumer<CreateAccountBloc, CreateAccountState>(
      listener: (context, state) {
        switch (state) {
          case CreateAccountStateCreated():
            context.pushNamed(Routes.verificationPage,
                extra: VerificationPageData(
                  mode: VERIFICATIONMODE.verifyAccount,
                ));
            break;
          case CreateAccountStateError(:final error):
            showDialog(
              context: context,
              builder: (context) => ErrorDialog(
                errorMessage: error,
              ),
            );
          default:
        }
      },
      builder: (context, state) {
        switch (state) {
          case CreateAccountStateLoading():
            return const MainButton(isLoading: true);

          default:
            return MainButton(buttonText: 'Continue', onTap: registerAccount);
        }
      },
    );
  }

  void registerAccount() {
    if (_formKey.currentState!.validate()) {
      final user = CreateUser(
        firstName: _firstNameTextField.text,
        lastName: _lastNameTextField.text,
        email: _emailTextField.text,
        password: _passwordTextField.text,
      );
      AppCache.userEmail = _emailTextField.text;
      _createAccountBloc.add(CreateAccountEvent.onCreate(user: user));
    }
  }
}
