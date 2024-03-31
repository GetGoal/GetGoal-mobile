import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/route_config.dart';
import '../../../../../shared/app_cache.dart';
import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/font.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/dialog/error_dialog.dart';
import '../../../../../shared/widgets/scaffold/get_goal_scaffold.dart';
import 'bloc/verify_account/verify_account_bloc.dart';
import 'bloc/verify_password_reset/verify_password_reset_bloc.dart';
import 'enum/verification_mode_enum.dart';
import 'widgets/otp_slot_text_field.dart';

class VerificationPageData {
  VerificationPageData({this.mode});

  final VERIFICATIONMODE? mode;
}

class VerificationPage extends StatefulWidget {
  const VerificationPage({
    super.key,
    this.pageData,
  });

  final VerificationPageData? pageData;

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  VerifyAccountBloc get _verifyAccountBloc => context.read<VerifyAccountBloc>();
  VerifyPasswordResetBloc get _verifyPasswordResetBloc =>
      context.read<VerifyPasswordResetBloc>();

  late FocusNode firstFocusNode;
  late FocusNode secondFocusNode;
  late FocusNode thirtFocusNode;
  late FocusNode forthFocusNode;
  late FocusNode fifthFocusNode;
  late FocusNode sixthFocusNode;
  String code1 = '';
  String code2 = '';
  String code3 = '';
  String code4 = '';
  String code5 = '';
  String code6 = '';

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
    return GetGoalScaffold(
      isGredientBackground: true,
      appbarTitle: 'Verification Code',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 24),
          _buildDescriptionInfo(),
          Expanded(
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
          _buildButtonSection(widget.pageData!.mode!),
        ],
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
          style: footnoteRegular().copyWith(color: AppColors.description),
        ),
        Text(AppCache.userEmail, style: footnoteRegular()),
      ],
    );
  }

  Widget _buildOtpFirstSlot() {
    return OtpSlotTextField(
      controller: _firstBoxInput,
      focusNode: firstFocusNode,
      onChanged: (String value) {
        setState(() {
          code1 = _firstBoxInput.text;
        });
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
        setState(() {
          code2 = _secondBoxInput.text;
        });
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
        setState(() {
          code3 = _thirtBoxInput.text;
        });
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
        setState(() {
          code4 = _forthBoxInput.text;
        });
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
        setState(() {
          code5 = _fifthBoxInput.text;
        });
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
        setState(() {
          code6 = _sixthBoxInput.text;
        });
        if (value.isEmpty) {
          fifthFocusNode.requestFocus();
          return;
        }
      },
    );
  }

  Widget _buildButtonSection(VERIFICATIONMODE mode) {
    String verifyCode = '$code1$code2$code3$code4$code5$code6';

    switch (mode) {
      case VERIFICATIONMODE.verifyPasswordReset:
        return BlocConsumer<VerifyPasswordResetBloc, VerifyPasswordResetState>(
          listener: (context, state) {
            switch (state) {
              case VerifyPasswordResetStateSuccess():
                context.go(Routes.newPasswordPage);
                break;
              case VerifyPasswordResetStateFailure(:final message):
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
              case VerifyPasswordResetStateLoading():
                return const MainButton(isLoading: true);

              default:
                return MainButton(
                  buttonText: 'Continue',
                  onTap: () {
                    _verifyPasswordResetBloc.add(
                      VerifyPasswordResetEvent.onVerify(code: verifyCode),
                    );
                  },
                );
            }
          },
        );

      default:
        return BlocConsumer<VerifyAccountBloc, VerifyAccountState>(
          listener: (context, state) {
            switch (state) {
              case VerifyAccountStateVerified():
                context.pushNamed(Routes.preferencePage);
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
              case VerifyAccountStateLoading():
                return const MainButton(isLoading: true);

              default:
                return MainButton(
                  buttonText: 'Continue',
                  onTap: () {
                    _verifyAccountBloc.add(
                      VerifyAccountEvent.verified(code: verifyCode),
                    );
                  },
                );
            }
          },
        );
    }
  }
}
