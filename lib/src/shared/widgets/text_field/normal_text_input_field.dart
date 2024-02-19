import 'package:flutter/material.dart';

import '../../themes/color.dart';
import '../../themes/font.dart';

class NormalTextInputField extends StatelessWidget {
  const NormalTextInputField({
    super.key,
    required this.label,
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
  });

  final String label;
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

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: body1(),
        ),
        const SizedBox(height: 8.0),
        SizedBox(
          child: TextFormField(
            onFieldSubmitted: onFieldSubmitted,
            onSaved: onSaved,
            autocorrect: false,

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

            // Text input field Decoration
            decoration: InputDecoration(
              isDense: true,
              hintText: hintText,

              // Background color
              fillColor: AppColors.white,
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
              enabledBorder: OutlineInputBorder(
                // Radius
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    12.0,
                  ),
                ),
                // Style
                borderSide: BorderSide(
                  color: AppColors.stock,
                  width: 1,
                ),
              ),

              // When text input field in focus
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    12.0,
                  ),
                ),
                borderSide: BorderSide(
                  color: AppColors.primary,
                  width: 1,
                ),
              ),

              // Text input field error style
              errorBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    12.0,
                  ),
                ),
                borderSide: BorderSide(
                  color: AppColors.red,
                  width: 1,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    12.0,
                  ),
                ),
                borderSide: BorderSide(
                  color: AppColors.red,
                  width: 1,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
