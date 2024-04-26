import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../../../../../shared/icon.dart';
import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';
import '../../../../../../shared/widgets/icon/custom_icon.dart';
import '../../../../domain/entities/program.dart';
import 'program_label.dart';

class ProgramRecommendedCard extends StatefulWidget {
  const ProgramRecommendedCard({
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
    this.onSave,
    this.onEdit,
    this.onDelete,
    this.onAnalytics,
    this.isShowMenu = false,
    this.isShowSaveButton = true,
    this.isSaved = false,
    this.owner,
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
  final Function? onSave;
  final Function? onEdit;
  final Function? onDelete;
  final Function? onAnalytics;
  final bool isShowMenu;
  final bool isShowSaveButton;
  final bool? isSaved;
  final ProgramOwner? owner;

  @override
  State<ProgramRecommendedCard> createState() => _ProgramRecommendedCardState();
}

class _ProgramRecommendedCardState extends State<ProgramRecommendedCard> {
  bool isTappedSave = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      isTappedSave = widget.isSaved!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        if (widget.onTab == null) return;
        widget.onTab!();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        width: MediaQuery.of(context).size.width / 1.2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _programImage(),
            const SizedBox(height: 16),
            _createdBy(),
            const SizedBox(height: 4),
            _programName(),
            const SizedBox(height: 8),
            _programMetaData(),
          ],
        ),
      ),
    );
  }

  Widget _createdBy() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Created by ${widget.owner?.firstName} ${widget.owner?.lastName}',
          style: caption2Regular().copyWith(color: AppColors.description),
        ),
        _programExpectedTime(),
      ],
    );
  }

  Widget _programName() {
    return SizedBox(
      height: 48,
      child: Text(
        widget.programName ?? '',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: bodyBold(),
      ),
    );
  }

  Widget _programMetaData() {
    return Row(
      children: [
        ProgramLabel(
          title: widget.label?.labelName ?? '',
        ),
        const SizedBox(width: 8),
        Text(
          DateFormat('yMMMd').format(DateTime.parse(widget.createdAt!)),
          style: caption2Regular().copyWith(color: AppColors.description),
        ),
        const Spacer(),
        widget.isShowSaveButton
            ? isTappedSave
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        isTappedSave = !isTappedSave;
                      });
                    },
                    child: SvgPicture.asset(
                      AppIcon.bookmark_saved_icon,
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      setState(() {
                        isTappedSave = !isTappedSave;
                      });
                      if (widget.onSave!() == null) return;

                      if (widget.isSaved!) {
                        widget.onSave!();
                      } else {}
                    },
                    child: CustomIcon(
                      icon: AppIcon.bookmark_icon,
                      size: 24,
                      iconColor: AppColors.description,
                    ),
                  )
            : const SizedBox(),
      ],
    );
  }

  Widget _programImage() {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          height: 144,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: NetworkImage(widget.programImage!),
            ),
          ),
        ),
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
          widget.duration ?? '',
          style: caption1Regular().copyWith(
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
