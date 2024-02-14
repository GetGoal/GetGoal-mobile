import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/route_config.dart';
import '../../../../shared/icon.dart';
import '../../../../shared/themes/color.dart';
import '../../../../shared/themes/font.dart';
import '../../../../shared/themes/spacing.dart';
import '../../../../shared/widgets/button/circle_button.dart';
import '../../../../shared/widgets/icon/custom_icon.dart';
import '../../../../shared/widgets/image/cache_image.dart';
import '../../../program/domain/models/program.dart';
import '../../../program/presentation/enum/program_form_mode.enum.dart';
import '../../../program/presentation/screens/program/widgets/program_card.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(
            AppSpacing.appMargin,
          ),
          child: Column(
            children: [
              _buildUserProfileInfo(),
              const SizedBox(height: 40),
              _buildMenuSelector(),
              _buildFeedSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserProfileInfo() {
    return Column(
      children: [
        const SizedBox(
          width: 96,
          height: 96,
          child: CacheImage(
            programImage:
                'https://images.unsplash.com/photo-1682686580452-37f1892ee5e8?q=80&w=1975&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            radius: 100,
          ),
        ),
        const SizedBox(height: 8),
        Text('Thana Sriwichai', style: title1()),
        const SizedBox(height: 8),
        // Container(
        //   padding:
        //       const EdgeInsets.only(top: 4, bottom: 4, right: 16, left: 16),
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(100),
        //     color: AppColors.primary,
        //   ),
        //   child: Text(
        //     'Follow',
        //     style: description().copyWith(color: const Color(0xFFC67E11)),
        //   ),
        // ),
        Container(
          padding:
              const EdgeInsets.only(top: 4, bottom: 4, right: 16, left: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: AppColors.red,
          ),
          child: Text(
            'Log out',
            style: description()
                .copyWith(color: const Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
      ],
    );
  }

  Widget _buildMenuSelector() {
    int selected = 0;

    return Container(
      height: 36,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        boxShadow: AppShadow.shadow,
        color: AppColors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                border: selected == 0
                    ? BorderDirectional(
                        bottom: BorderSide(color: AppColors.primary),
                      )
                    : null,
              ),
              alignment: Alignment.center,
              width: 96,
              child: Text(
                'Your program',
                style: description().copyWith(
                  color:
                      selected == 0 ? AppColors.primary : AppColors.description,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: selected == 1
                    ? BorderDirectional(
                        bottom: BorderSide(color: AppColors.primary),
                      )
                    : null,
              ),
              width: 96,
              child: Text(
                'Save',
                style: description().copyWith(
                  color:
                      selected == 1 ? AppColors.primary : AppColors.description,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: selected == 2
                    ? BorderDirectional(
                        bottom: BorderSide(color: AppColors.primary),
                      )
                    : null,
              ),
              width: 96,
              child: Text(
                'Applied',
                style: description().copyWith(
                  color:
                      selected == 2 ? AppColors.primary : AppColors.description,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeedSection() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.appMargin),
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (context, index) {
        return ProgramCard(
          onTab: () {},
          programImage:
              'https://images.unsplash.com/photo-1682686580452-37f1892ee5e8?q=80&w=1975&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          programName: 'programList[index].programName',
          programDesc: 'programList[index].programDesc',
          rating: 3,
          duration: '3 Days',
          label: const Label(labelName: 'Unknow'),
          createdAt: DateTime.now().toString(),
          actionButton: Theme(
            data: Theme.of(context).copyWith(
              splashFactory: NoSplash.splashFactory,
            ),
            child: PopupMenuButton(
              elevation: 1,
              shadowColor: Colors.black38,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(0),
              icon: CircleButton(
                icon: CustomIcon(
                  icon: AppIcon.menu_icon,
                  iconColor: AppColors.description,
                ),
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                  onTap: () => context.pushNamed(
                    Routes.programCreatePage,
                    extra: PROGRAMFORMMODE.edit,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        Text('Edit'),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        Text('Delete', style: TextStyle(color: AppColors.red)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
