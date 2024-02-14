import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/font.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';
import 'widgets/otp_slot_text_field.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  late FocusNode firstFocusNode;
  late FocusNode secondFocusNode;
  late FocusNode thirtFocusNode;
  late FocusNode forthFocusNode;
  late FocusNode fifthFocusNode;

  @override
  void initState() {
    super.initState();

    firstFocusNode = FocusNode();
    secondFocusNode = FocusNode();
    thirtFocusNode = FocusNode();
    forthFocusNode = FocusNode();
    fifthFocusNode = FocusNode();
  }

  @override
  void dispose() {
    firstFocusNode.dispose();
    secondFocusNode.dispose();
    thirtFocusNode.dispose();
    forthFocusNode.dispose();
    fifthFocusNode.dispose();

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
        Text('example@gmail.com', style: body2()),
      ],
    );
  }

  Widget _buildOtpFirstSlot() {
    return OtpSlotTextField(
      focusNode: firstFocusNode,
      onChanged: (String value) {
        if (value.isEmpty) return;
        secondFocusNode.requestFocus();
      },
    );
  }

  Widget _buildOtpSecondSlot() {
    return OtpSlotTextField(
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
      focusNode: fifthFocusNode,
      onChanged: (String value) {
        if (value.isEmpty) {
          forthFocusNode.requestFocus();
          return;
        }
      },
    );
  }

  Widget _buildButtonSection() {
    return Container(
      padding: const EdgeInsets.only(bottom: 40),
      child: Column(
        children: [
          MainButton(
            buttonText: 'Resend (60s)',
            buttonColor: AppColors.white,
            bottonStock: AppColors.stock,
            onTap: () {},
          ),
          const SizedBox(height: 16),
          MainButton(
            buttonText: 'Continue',
            onTap: () {
              context.go('/main');
            },
          ),
        ],
      ),
    );
  }
}
