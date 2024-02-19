import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/route_config.dart';
import '../../../../../shared/app_cache.dart';
import '../../../../../shared/mixins/validation/auth_validation_mixin.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';
import '../../../../../shared/widgets/text_field/normal_text_input_field.dart';
import '../../../domain/entity/create_user.dart';
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
    return GetGoalSubScaffold(
      appbarTitle: 'Sign up',
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
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
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildSubmitButton(),
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
    return Container(
      padding: const EdgeInsets.only(bottom: 40, right: 20, left: 20),
      child: BlocConsumer<CreateAccountBloc, CreateAccountState>(
        listener: (context, state) {
          switch (state) {
            case CreateAccountStateCreated():
              context.pushNamed(Routes.verificationPage);
              break;
            default:
          }
        },
        builder: (context, state) {
          switch (state) {
            case CreateAccountStateInitial():
              return MainButton(buttonText: 'Continue', onTap: registerAccount);
            case CreateAccountStateLoading():
              return const MainButton(isLoading: true);
            case CreateAccountStateCreated():
              return const MainButton(isLoading: true);
            case CreateAccountStateError():
              return MainButton(buttonText: 'Continue', onTap: registerAccount);
            default:
              return const MainButton(buttonText: 'Continue');
          }
        },
      ),
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
