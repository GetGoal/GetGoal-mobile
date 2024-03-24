import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/route_config.dart';
import '../../../../../shared/icon.dart';
import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/font.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/dialog/error_dialog.dart';
import '../../../../../shared/widgets/scaffold/get_goal_scaffold.dart';
import '../../../../../shared/widgets/text/get_goal_gradient_text.dart';
import '../login/bloc/google_login/google_sign_in_bloc.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  GoogleSignInBloc get _googleBloc => context.read<GoogleSignInBloc>();

  @override
  Widget build(BuildContext context) {
    return GetGoalScaffold(
      isShowAppbar: false,
      isGredientBackground: true,
      body: Column(
        children: [
          _buildTextHeader(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _buildGoogleLoginButton(),
                const SizedBox(height: 24),
                Text('Or', style: caption2Bold()),
                const SizedBox(height: 24),
                _buildCreateAccountButton(),
                const SizedBox(height: 16),
                _buildLoginButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextHeader() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Welcome to', style: subHeadlineRegular()),
          const GetGoalGradientText(
            'GetGoal!',
            style: TextStyle(fontSize: 64, fontWeight: FontWeight.w100),
          ),
          Text(
            '"Dream, Plan, Achieve with GetGoal!"',
            style: subHeadlineRegular(),
          ),
        ],
      ),
    );
  }

  Widget _buildGoogleLoginButton() {
    return BlocConsumer<GoogleSignInBloc, GoogleSignInState>(
      listener: (context, state) {
        switch (state) {
          case GoogleSignInSuccess():
            context.go(Routes.mainPage);
            break;
          case GoogleSignInFailure(:final error):
            showDialog(
              context: context,
              builder: (context) => ErrorDialog(errorMessage: error),
            );
            break;
          default:
        }
      },
      builder: (context, state) {
        switch (state) {
          case GoogleSignInLoading():
            return MainButton(
              isLoading: true,
              buttonColor: [AppColors.secondary, AppColors.secondary],
              isHaveStroke: true,
            );
          default:
            return MainButton(
              icon: SvgPicture.asset(
                AppIcon.google_icon,
                fit: BoxFit.scaleDown,
                height: 36,
              ),
              buttonText: 'Continue with Google',
              buttonColor: [AppColors.secondary, AppColors.secondary],
              isHaveStroke: true,
              isHaveBoxShadow: true,
              onTap: () =>
                  _googleBloc.add(const GoogleSignInEvent.onGoogleLogin()),
            );
        }
      },
    );
  }

  Widget _buildCreateAccountButton() {
    return MainButton(
      buttonText: 'Create an account',
      onTap: () => context.pushNamed(Routes.signUpPage),
    );
  }

  Widget _buildLoginButton() {
    return MainButton(
      buttonText: 'Login',
      buttonColor: [AppColors.secondary, AppColors.secondary],
      onTap: () => context.pushNamed(Routes.loginPage),
    );
  }
}
