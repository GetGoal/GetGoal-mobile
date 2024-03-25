import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../../shared/icon.dart';
import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';
import '../../../../../../shared/widgets/icon/custom_icon.dart';
import '../../../../../../shared/widgets/image/cache_image.dart';
import '../../../../domain/entities/program.dart';
import 'program_label.dart';

class ProgramCard extends StatelessWidget {
  const ProgramCard({
    super.key,
    this.programImage,
    this.createdBy,
    this.duration,
    this.programName,
    this.programDesc,
    this.label,
    this.rating,
    this.createdAt,
    this.onTab,
    this.actionButton,
  });

  final String? programImage;
  final String? createdBy;
  final String? duration;
  final String? programName;
  final String? programDesc;
  final Label? label;
  final double? rating;
  final String? createdAt;
  final Function? onTab;
  final Widget? actionButton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        if (onTab == null) return;
        onTab!();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 265,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // _programCreatedby(),
                      // const SizedBox(height: 4),
                      _programName(),
                      const SizedBox(height: 8),
                      _programExpectedTime(),
                      const SizedBox(height: 8),
                      _programDescription(),
                    ],
                  ),
                ),
                const Spacer(),
                _programImage(),
              ],
            ),
            const SizedBox(height: 16),
            _programMetaData(),
          ],
        ),
      ),
    );
  }

  Widget _programName() {
    return Text(
      programName ?? '',
      style: subHeadlineBold(),
    );
  }

  Widget _programDescription() {
    return Text(
      programDesc ?? '',
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      style: footnoteRegular().copyWith(color: AppColors.description),
    );
  }

  Widget _programMetaData() {
    return Row(
      children: [
        ProgramLabel(
          title: label?.labelName ?? '',
        ),
        const SizedBox(width: 8),
        Text(
          DateFormat('yMMMd').format(DateTime.parse(createdAt!)),
          style: caption2Regular().copyWith(color: AppColors.description),
        ),
        const Spacer(),
        actionButton ?? const SizedBox(),
      ],
    );
  }

  Widget _programImage() {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          height: 96,
          width: 96,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: CacheImage(
            programImage: programImage!,
            radius: 16,
          ),
        ),
        // Container(
        //   margin: const EdgeInsets.only(top: 4, right: 4),
        //   child: Align(
        //     child: actionButton ?? const SizedBox(),
        //   ),
        // ),
      ],
    );
  }

  Widget _programExpectedTime() {
    return Row(
      children: [
        const CustomIcon(icon: AppIcon.program_duration_icon, size: 16),
        const SizedBox(
          width: 4,
        ),
        Text(
          duration ?? '',
          style: caption1Regular().copyWith(
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
