import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

import '../../themes/color.dart';
import '../../themes/font.dart';

class NormalTextInputField extends StatelessWidget {
  const NormalTextInputField({
    super.key,
    this.label,
    this.readOnly = false,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.height = 56,
    this.controller,
    this.textInputAction,
    this.onTap,
    this.validator,
    this.errorText,
    this.maxLines = 1,
    this.isPassword = false,
    this.onSaved,
    this.onFieldSubmitted,
    this.isDisable = false,
    this.isHideLabel = false,
    this.textInputFormatter = const <TextInputFormatter>[],
    this.keyboardType,
  });

  final String? label;
  final bool? readOnly;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double? height;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final VoidCallback? onTap;
  final String? Function(String?)? validator;
  final String? errorText;
  final int? maxLines;
  final bool? isPassword;
  final Function(String?)? onSaved;
  final Function(String)? onFieldSubmitted;
  final bool? isDisable;
  final bool? isHideLabel;
  final List<TextInputFormatter>? textInputFormatter;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isHideLabel!
            ? const SizedBox()
            : Text(
                label ?? 'Unknown',
                style: subHeadlineBold().copyWith(color: AppColors.description),
              ),
        isHideLabel! ? const SizedBox() : const SizedBox(height: 8.0),
        SizedBox(
          child: TextFormField(
            keyboardType: keyboardType,
            readOnly: isDisable!,
            onFieldSubmitted: onFieldSubmitted,
            onSaved: onSaved,
            autocorrect: false,
            style: subHeadlineRegular().copyWith(
              color: isDisable! ? AppColors.description : AppColors.white,
            ),

            obscureText: isPassword!,

            // autovalidateMode: AutovalidateMode.onUserInteraction,

            // Input validation
            validator: validator != null ? validator! : null,

            onTap: onTap,

            // Unfocus from input field
            onTapOutside: (value) {
              FocusScope.of(context).requestFocus(FocusNode());
            },

            // For at input field controller
            controller: controller,

            textInputAction: textInputAction,

            maxLines: maxLines,

            inputFormatters: <TextInputFormatter>[...textInputFormatter!],

            // Text input field Decoration
            decoration: InputDecoration(
              isDense: true,
              hintText: hintText,

              hintStyle: subHeadlineRegular().copyWith(
                color: AppColors.description,
              ),
              errorStyle: subHeadlineRegular().copyWith(color: AppColors.red),

              // Background color
              fillColor: isDisable! ? AppColors.disable : AppColors.secondary,
              filled: true,
              contentPadding: const EdgeInsets.all(16),

              // Prefix icon section
              prefixIconColor: AppColors.description,
              prefixIcon: prefixIcon != null
                  ? SizedBox(
                      child: prefixIcon,
                    )
                  : null,

              // Suffix icon section
              suffixIconColor: AppColors.description,
              suffixIcon: suffixIcon != null
                  ? SizedBox(
                      child: suffixIcon,
                    )
                  : null,

              // Text input field border
              enabledBorder: isDisable!
                  ? const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    )
                  : GradientOutlineInputBorder(
                      gradient: AppColors.silverGradient,
                      // Radius
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),

              // When text input field in focus
              focusedBorder: isDisable!
                  ? const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    )
                  : GradientOutlineInputBorder(
                      gradient: AppColors.primaryGradient,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),

              // Text input field error style
              errorBorder: GradientOutlineInputBorder(
                gradient: AppColors.redGradient,
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
              focusedErrorBorder: isDisable!
                  ? null
                  : GradientOutlineInputBorder(
                      gradient: AppColors.redGradient,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
