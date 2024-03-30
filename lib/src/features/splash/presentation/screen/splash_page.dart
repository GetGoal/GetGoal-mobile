import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../../config/route_config.dart';
import '../../../../shared/themes/font.dart';
import '../../../../shared/widgets/scaffold/get_goal_scaffold.dart';
import '../../../../shared/widgets/text/get_goal_gradient_text.dart';
import '../bloc/splash_page_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  String appName = 'GetGoal!';
  String moral = '"Dream, Plan, Achieve with GetGoal!"';

  SplashPageBloc get _splashBloc => context.read<SplashPageBloc>();

  @override
  Widget build(BuildContext context) {
    return GetGoalScaffold(
      isShowAppbar: false,
      isGredientBackground: false,
      body: Column(
        children: [
          _buildSplashTitle(),
        ],
      ),
    );
  }

  Widget _buildSplashTitle() {
    return BlocConsumer<SplashPageBloc, SplashPageState>(
      listener: (context, state) {
        state.maybeWhen(
          valid: () {
            context.go(Routes.mainPage);
          },
          invalid: () {
            context.go(Routes.landingPage);
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetGoalGradientText(appName,
                      style: const TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.w100,
                      ))
                  .animate()
                  .fadeIn(duration: 500.ms)
                  .then(delay: 600.ms)
                  .slideY(
                    begin: 0.2,
                    end: 0,
                    curve: Curves.easeInOutCubic,
                    duration: 1400.ms,
                  ),
              Text(
                moral,
                style: subHeadlineRegular(),
              )
                  .animate()
                  .then(delay: 900.ms)
                  .fadeIn(delay: 1300.ms, curve: Curves.easeIn)
                  .then(delay: 900.ms)
                  .callback(
                callback: (_) {
                  _splashBloc.add(const SplashPageEvent.onLoad());
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
