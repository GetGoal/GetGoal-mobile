import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';

class OtpSlotTextField extends StatelessWidget {
  const OtpSlotTextField({
    super.key,
    required this.focusNode,
    this.onChanged,
  });

  final FocusNode focusNode;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        style: heading1(),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 24),
          isDense: true,
          fillColor: AppColors.white,
          filled: true,
          prefixIconColor: AppColors.description,
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(
                12.0,
              ),
            ),
            borderSide: BorderSide(
              color: AppColors.stock,
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
          counterText: '',
        ),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly,
        ],
        maxLength: 1,
        focusNode: focusNode,
        onChanged: (value) => onChanged!(value) ?? () {},
        onTapOutside: (event) {
          FocusScope.of(context).requestFocus(FocusNode());
        },
      ),
    );
  }
}
