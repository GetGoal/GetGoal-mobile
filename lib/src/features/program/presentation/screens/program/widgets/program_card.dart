import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../../../../../shared/icon.dart';
import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';
import '../../../../../../shared/widgets/button/circle_button.dart';
import '../../../../../../shared/widgets/image/cache_image.dart';
import '../../../../domain/models/program.dart';
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
    this.onTab,
  });

  final String? programImage;
  final String? createdBy;
  final String? duration;
  final String? programName;
  final String? programDesc;
  final Label? label;
  final double? rating;
  final Function? onTab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        if (onTab == null) return;
        onTab!();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: AppShadow.shadow,
        ),
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            children: [
              _programImage(),
              const SizedBox(height: 16),
              _programMetaData(),
              const SizedBox(height: 8),
              _programDetail(),
              const SizedBox(height: 16),
              _programMoreInfo(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _programImage() {
    return Stack(
      children: [
        Container(
          height: 144,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: CacheImage(
            programImage: programImage!,
            radius: 16,
          ),
        ),
        Align(
          alignment: AlignmentDirectional.topEnd,
          child: Container(
            margin: const EdgeInsets.all(8),
            child: CircleButton(
              size: 36,
              icon: SvgPicture.asset(
                AppIcon.bookmark_icon,
                height: 24,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _programMetaData() {
    return Row(
      children: [
        Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              'Thana Sriwichai',
              style: description(),
            ),
            const SizedBox(
              width: 8,
            ),
            GestureDetector(
              child: Text(
                'Follow',
                style: description().copyWith(color: AppColors.primary),
              ),
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            SvgPicture.asset(
              AppIcon.program_duration_icon,
              height: 16,
            ),
            const SizedBox(
              width: 4,
            ),
            Text('$duration', style: description()),
          ],
        ),
      ],
    );
  }

  Widget _programDetail() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$programName',
            style: title1(),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          const SizedBox(height: 4),
          Text(
            '$programDesc',
            style: body2(),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }

  Widget _programMoreInfo() {
    return Row(
      children: [
        Row(
          children: [
            ProgramLebel(
              title: '${label!.labelName}',
            ),
            const SizedBox(width: 8),
            Text(DateFormat('yMMMd').format(DateTime.now())),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            Icon(
              Icons.star_rounded,
              color: AppColors.primary,
              size: 24,
            ),
            Text(
              '$rating',
              style: TextStyle(color: AppColors.primary),
            ),
          ],
        ),
      ],
    );
  }
}
