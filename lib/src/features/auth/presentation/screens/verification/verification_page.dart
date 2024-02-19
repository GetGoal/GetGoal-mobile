import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/route_config.dart';
import '../../../../../shared/app_cache.dart';
import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/font.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/dialog/error_dialog.dart';
import '../../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';
import 'bloc/verify_account/verify_account_bloc.dart';
import 'widgets/otp_slot_text_field.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  VerifyAccountBloc get _verifyAccountBloc => context.read<VerifyAccountBloc>();

  late FocusNode firstFocusNode;
  late FocusNode secondFocusNode;
  late FocusNode thirtFocusNode;
  late FocusNode forthFocusNode;
  late FocusNode fifthFocusNode;
  late FocusNode sixthFocusNode;

  final _firstBoxInput = TextEditingController();
  final _secondBoxInput = TextEditingController();
  final _thirtBoxInput = TextEditingController();
  final _forthBoxInput = TextEditingController();
  final _fifthBoxInput = TextEditingController();
  final _sixthBoxInput = TextEditingController();

  @override
  void initState() {
    super.initState();

    firstFocusNode = FocusNode();
    secondFocusNode = FocusNode();
    thirtFocusNode = FocusNode();
    forthFocusNode = FocusNode();
    fifthFocusNode = FocusNode();
    sixthFocusNode = FocusNode();
  }

  @override
  void dispose() {
    firstFocusNode.dispose();
    secondFocusNode.dispose();
    thirtFocusNode.dispose();
    forthFocusNode.dispose();
    fifthFocusNode.dispose();
    sixthFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetGoalSubScaffold(
      appbarTitle: 'Verification Code',
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildDescriptionInfo(),
            Container(
              padding: const EdgeInsets.only(bottom: 80),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildOtpFirstSlot(),
                  const SizedBox(width: 16),
                  _buildOtpSecondSlot(),
                  const SizedBox(width: 16),
                  _buildOtpThirtSlot(),
                  const SizedBox(width: 16),
                  _buildOtpForthSlot(),
                  const SizedBox(width: 16),
                  _buildOtpFifthSlot(),
                  const SizedBox(width: 16),
                  _buildOtpSixthSlot(),
                ],
              ),
            ),
            _buildButtonSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'We sent the code to your Email',
          style: body2().copyWith(color: AppColors.description),
        ),
        Text(AppCache.userEmail, style: body2()),
      ],
    );
  }

  Widget _buildOtpFirstSlot() {
    return OtpSlotTextField(
      controller: _firstBoxInput,
      focusNode: firstFocusNode,
      onChanged: (String value) {
        if (value.isEmpty) return;
        secondFocusNode.requestFocus();
      },
    );
  }

  Widget _buildOtpSecondSlot() {
    return OtpSlotTextField(
      controller: _secondBoxInput,
      focusNode: secondFocusNode,
      onChanged: (String value) {
        if (value.isEmpty) {
          firstFocusNode.requestFocus();
          return;
        }
        thirtFocusNode.requestFocus();
      },
    );
  }

  Widget _buildOtpThirtSlot() {
    return OtpSlotTextField(
      controller: _thirtBoxInput,
      focusNode: thirtFocusNode,
      onChanged: (String value) {
        if (value.isEmpty) {
          secondFocusNode.requestFocus();
          return;
        }
        forthFocusNode.requestFocus();
      },
    );
  }

  Widget _buildOtpForthSlot() {
    return OtpSlotTextField(
      controller: _forthBoxInput,
      focusNode: forthFocusNode,
      onChanged: (String value) {
        if (value.isEmpty) {
          thirtFocusNode.requestFocus();
          return;
        }
        fifthFocusNode.requestFocus();
      },
    );
  }

  Widget _buildOtpFifthSlot() {
    return OtpSlotTextField(
      controller: _fifthBoxInput,
      focusNode: fifthFocusNode,
      onChanged: (String value) {
        if (value.isEmpty) {
          forthFocusNode.requestFocus();
          return;
        }
        sixthFocusNode.requestFocus();
      },
    );
  }

  Widget _buildOtpSixthSlot() {
    return OtpSlotTextField(
      controller: _sixthBoxInput,
      focusNode: sixthFocusNode,
      onChanged: (String value) {
        if (value.isEmpty) {
          fifthFocusNode.requestFocus();
          return;
        }
      },
    );
  }

  Widget _buildButtonSection() {
    return BlocConsumer<VerifyAccountBloc, VerifyAccountState>(
      listener: (context, state) {
        switch (state) {
          case VerifyAccountStateVerified():
            context.go(Routes.loginPage);
            break;
          case VerifyAccountStateVirifiedError(:final message):
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
          case VerifyAccountStateInitial():
            return _verificationButton();

          case VerifyAccountStateLoading():
            return Container(
              padding: const EdgeInsets.only(bottom: 40),
              child: const MainButton(
                buttonText: 'Loading',
                isLoading: true,
              ),
            );

          case VerifyAccountStateVerified():
            return Container(
              padding: const EdgeInsets.only(bottom: 40),
              child: const MainButton(
                buttonText: 'Loading',
                isLoading: true,
              ),
            );

          case VerifyAccountStateVirifiedError():
            return _verificationButton();
          default:
            return _verificationButton();
        }
      },
    );
  }

  Widget _verificationButton() {
    return Container(
      padding: const EdgeInsets.only(bottom: 40),
      child: Column(
        children: [
          // MainButton(
          //   buttonText: 'Resend (60s)',
          //   buttonColor: AppColors.white,
          //   bottonStock: AppColors.stock,
          //   onTap: () {},
          // ),
          // const SizedBox(height: 16),
          MainButton(
            buttonText: 'Continue',
            onTap: () {
              String code1 = _firstBoxInput.text;
              String code2 = _secondBoxInput.text;
              String code3 = _thirtBoxInput.text;
              String code4 = _forthBoxInput.text;
              String code5 = _fifthBoxInput.text;
              String code6 = _sixthBoxInput.text;

              String verifyCode = '$code1$code2$code3$code4$code5$code6';
              _verifyAccountBloc.add(
                VerifyAccountEvent.verified(code: verifyCode),
              );
              // context.go('/main');
            },
          ),
        ],
      ),
    );
  }
}
