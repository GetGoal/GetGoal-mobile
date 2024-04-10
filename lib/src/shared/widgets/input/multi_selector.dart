import 'package:flutter/material.dart';

import '../../../features/auth/presentation/screens/preference/widgets/preference_chip.dart';
import '../../../features/program/domain/entities/program_filter.dart';
import '../../themes/color.dart';
import '../../themes/font.dart';

class MultiSelector extends StatelessWidget {
  const MultiSelector({
    super.key,
    required this.label,
    this.bottomSheet,
    required this.categoryList,
  });

  final String label;
  final Widget? bottomSheet;
  final List<ProgramFilter> categoryList;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (bottomSheet == null) return;
        return await showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return bottomSheet!;
          },
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              label,
              style: subHeadlineBold().copyWith(color: AppColors.description),
            ),
          ),
          const SizedBox(height: 8.0),
          categoryList.isEmpty
              ? SizedBox(
                  child: Container(
                    width: 36,
                    height: 36,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(36.0),
                      gradient: AppColors.primaryGradient,
                      boxShadow: AppShadow.shadow,
                    ),
                    child: Text('+', style: bodyBold()),
                  ),
                )
              : Wrap(
                  children: List<Widget>.generate(
                    categoryList.length + 1,
                    (int index) {
                      if (index == categoryList.length) {
                        return GestureDetector(
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (context) {
                                return bottomSheet!;
                              },
                            );
                          },
                          child: Container(
                            width: 36,
                            height: 36,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(36.0),
                              gradient: AppColors.primaryGradient,
                              boxShadow: AppShadow.shadow,
                            ),
                            child: Text('+', style: bodyBold()),
                          ),
                        );
                      } else {
                        return Container(
                          padding: const EdgeInsets.only(right: 8, bottom: 8),
                          child: PreferenceChip(
                            labelName: categoryList[index].labelName!,
                            isSelected: false,
                            onTab: (bool isSelected) async {
                              if (bottomSheet == null) return;
                              return await showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (context) {
                                  return bottomSheet!;
                                },
                              );
                            },
                          ),
                        );
                      }
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
