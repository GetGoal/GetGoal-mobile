import 'package:flutter/material.dart';

import '../../../../../../shared/themes/color.dart';

class ProgramLebel extends StatelessWidget {
  const ProgramLebel({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      height: 24,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
            style: const TextStyle(fontSize: 12),
          ),
        ),
      ),
    );
  }
}
