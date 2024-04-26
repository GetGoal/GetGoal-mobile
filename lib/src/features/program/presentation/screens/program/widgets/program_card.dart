import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../../../../../shared/icon.dart';
import '../../../../../../shared/themes/color.dart';
import '../../../../../../shared/themes/font.dart';
import '../../../../../../shared/widgets/icon/custom_icon.dart';
import '../../../../../../shared/widgets/image/cache_image.dart';
import '../../../../domain/entities/program.dart';
import 'program_label.dart';

class ProgramCard extends StatefulWidget {
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
  State<ProgramCard> createState() => _ProgramCardState();
}

class _ProgramCardState extends State<ProgramCard> {
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
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _createdBy(),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _programName(),
                widget.isShowMenu ? _programMenu() : const SizedBox(),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 265,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _programExpectedTime(),
                      const SizedBox(height: 8),
                      _programDescription(),
                    ],
                  ),
                ),
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

  Widget _createdBy() {
    return Text(
      'Created by ${widget.owner!.firstName} ${widget.owner!.lastName}',
      style: caption1Regular().copyWith(color: AppColors.description),
    );
  }

  Widget _programName() {
    return Flexible(
      child: Text(
        widget.programName ?? '',
        maxLines: 2,
        style: bodyBold(),
      ),
    );
  }

  Widget _programDescription() {
    return Text(
      widget.programDesc ?? 'No descripition',
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      style: footnoteRegular().copyWith(color: AppColors.description),
    );
  }

  Widget _programMetaData() {
    return Row(
      children: [
        ProgramLabel(
          title: widget.label?.labelName ?? '',
        ),
        const SizedBox(width: 16),
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
          height: 96,
          width: 96,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: CacheImage(
            programImage: widget.programImage!,
            radius: 16,
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

  Widget _programMenu() {
    return Theme(
      data: Theme.of(context).copyWith(
        splashFactory: NoSplash.splashFactory,
      ),
      child: PopupMenuButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(0),
        icon: CustomIcon(
          size: 24,
          icon: AppIcon.menu_icon,
          iconColor: AppColors.description,
        ),
        itemBuilder: (context) => [
          // Analytic program
          PopupMenuItem(
            onTap: () {
              if (widget.onAnalytics == null) return;
              widget.onAnalytics!();
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Text('Analytics'),
                ],
              ),
            ),
          ),

          // Edit program
          PopupMenuItem(
            onTap: () {
              if (widget.onEdit == null) return;
              widget.onEdit!();
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Text('Edit'),
                ],
              ),
            ),
          ),

          // Delete program
          PopupMenuItem(
            onTap: () {
              if (widget.onDelete == null) return;
              widget.onDelete!();
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Text(
                    'Delete',
                    style: TextStyle(color: AppColors.red),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
