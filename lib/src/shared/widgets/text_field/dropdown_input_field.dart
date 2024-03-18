import 'package:flutter/material.dart';

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
    return DropdownButtonFormField<String>(
      key: dropdownKey,
      value: value,
      hint: Text('$hintText'),
      elevation: 1,
      borderRadius: BorderRadius.circular(16),
      isDense: true,
      decoration: InputDecoration(
        isDense: true,
        fillColor: AppColors.white,
        filled: true,
        contentPadding: const EdgeInsets.all(16),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(
              12.0,
            ),
          ),
          borderSide: BorderSide(
            color: AppColors.strock,
            width: 1,
          ),
        ),
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
      ),
      items: dropdownData
          .map(
            (item) => DropdownMenuItem<String>(
              value: item,
              child: Text(item, style: body1()),
            ),
          )
          .toList(),
      onChanged: onChanged,
    );
  }
}
