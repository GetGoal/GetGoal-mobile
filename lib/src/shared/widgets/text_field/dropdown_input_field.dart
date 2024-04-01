import 'package:flutter/material.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

import '../../themes/color.dart';
import '../../themes/font.dart';

class DropdownInputField extends StatelessWidget {
  const DropdownInputField({
    super.key,
    this.hintText,
    required this.dropdownData,
    this.onChanged,
    this.dropdownKey,
    this.value,
  });

  final String? hintText;
  final List<String> dropdownData;
  final Function(String?)? onChanged;
  final Key? dropdownKey;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: AppColors.secondary,
      ),
      child: DropdownButtonFormField<String>(
        key: dropdownKey,
        value: value,
        hint: Text('$hintText'),
        elevation: 1,
        borderRadius: BorderRadius.circular(16),
        isDense: true,
        decoration: InputDecoration(
          isDense: true,
          fillColor: AppColors.secondary,
          filled: true,
          suffixStyle: subHeadlineRegular().copyWith(color: AppColors.white),
          contentPadding: const EdgeInsets.all(16),
          enabledBorder: GradientOutlineInputBorder(
            gradient: AppColors.silverGradient,
            // Radius
            borderRadius: const BorderRadius.all(
              Radius.circular(
                16.0,
              ),
            ),
          ),
          focusedBorder: GradientOutlineInputBorder(
            gradient: AppColors.primaryGradient,
            // Radius
            borderRadius: const BorderRadius.all(
              Radius.circular(
                16.0,
              ),
            ),
          ),
        ),
        items: dropdownData
            .map(
              (item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: subHeadlineRegular().copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
            )
            .toList(),
        onChanged: onChanged,
      ),
    );
  }
}
