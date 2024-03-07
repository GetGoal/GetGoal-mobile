import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/i18n/strings.g.dart';
import '../../../../config/route_config.dart';
import '../../../../shared/icon.dart';
import '../../../../shared/themes/color.dart';
import '../../../../shared/themes/font.dart';
import '../../../../shared/themes/spacing.dart';
import '../../../../shared/widgets/button/circle_button.dart';
import '../../../../shared/widgets/dialog/error_dialog.dart';
import '../../../../shared/widgets/icon/custom_icon.dart';
import '../../../../shared/widgets/image/cache_image.dart';
import '../../../program/domain/models/program.dart';
import '../../../program/presentation/bloc/delete_program/delete_program_bloc.dart';
import '../../../program/presentation/enum/program_form_mode.enum.dart';
import '../../../program/presentation/screens/program/widgets/program_card.dart';
import 'bloc/logout/logout_bloc.dart';
import 'bloc/user_profile/user_profile_bloc.dart';
import 'bloc/user_program/user_program_bloc.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  UserProgramBloc get _userProgramBloc => context.read<UserProgramBloc>();
  LogoutBloc get _logoutBloc => context.read<LogoutBloc>();
  DeleteProgramBloc get _deleteProgramBloc => context.read<DeleteProgramBloc>();
  UserProfileBloc get _userProfileBloc => context.read<UserProfileBloc>();

  @override
  void initState() {
    _userProgramBloc.add(const UserProgramEvent.started());
    _userProfileBloc.add(const UserProfileEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          _userProgramBloc.add(const UserProgramEvent.started());
          _userProfileBloc.add(const UserProfileEvent.started());
        },
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(
              AppSpacing.appMargin,
            ),
            child: Column(
              children: [
                _buildUserProfileInfo(),
                const SizedBox(height: 8),
                _buildLogoutButton(),
                const SizedBox(height: 40),
                _buildMenuSelector(),
                _buildFeedSection(),
              ],
            ),
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
        BlocConsumer<UserProfileBloc, UserProfileState>(
          listener: (context, state) {},
          builder: (context, state) {
            switch (state) {
              case UserProfileStateInitial():
                return const SizedBox();
              case UserProfileStateLoading():
                return const SizedBox();
              case UserProfileStateLoadedSuccess(:final user):
                return Text(
                  '${user.firstName} ${user.lastName}',
                  style: title1(),
                );
              case UserProfileStateError():
                return Text('Error', style: title1());
              default:
                return const SizedBox();
            }
          },
        ),
      ],
    );
  }

  Widget _buildLogoutButton() {
    return BlocConsumer<LogoutBloc, LogoutState>(
      listener: (context, state) {
        switch (state) {
          case LogoutStateloaggedOut():
            context.go(Routes.loginPage);
            break;
          case LogoutStateLoggedOutError(:final message):
            showDialog(
              context: context,
              builder: (context) => ErrorDialog(errorMessage: message),
            );
          default:
        }
      },
      buildWhen: (previous, current) => current is LogoutStateInitial,
      builder: (context, state) {
        switch (state) {
          case LogoutStateInitial():
            return GestureDetector(
              onTap: () => _logoutBloc.add(const LogoutEvent.onLogout()),
              child: Container(
                padding: const EdgeInsets.only(
                  top: 4,
                  bottom: 4,
                  right: 16,
                  left: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: AppColors.red,
                ),
                child: Text(
                  Translations.of(context).user_profile.logout,
                  style: description().copyWith(
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            );

          case LogoutStateLoading():
          case LogoutStateloaggedOut():
          case LogoutStateLoggedOutError():
          default:
            return const SizedBox();
        }
      },
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
                Translations.of(context).user_profile.display_your_program,
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
                Translations.of(context).user_profile.display_save_program,
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
                Translations.of(context).user_profile.display_applied_program,
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
    return BlocConsumer<UserProgramBloc, UserProgramState>(
      listener: (context, state) {},
      builder: (context, state) {
        switch (state) {
          case UserProgramStateInitial():
            return const SizedBox();

          case UserProgramStateLoading():
            return const SizedBox();

          case UserProgramStateLoadedSuccess(:final programList):
            return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: programList.length,
              itemBuilder: (context, index) {
                return ProgramCard(
                  onTab: () {},
                  programImage: programList[index].programImage,
                  programName: programList[index].programName,
                  programDesc: programList[index].programDesc,
                  rating: programList[index].rating,
                  duration: programList[index].expectedTime,
                  label:
                      Label(labelName: programList[index].labels![0].labelName),
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
                        // Edit program
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

                        // Delete program
                        PopupMenuItem(
                          onTap: () {
                            _deleteProgramBloc.add(
                              DeleteProgramEvent.onDelete(
                                programId:
                                    programList[index].programId.toString(),
                              ),
                            );

                            _userProgramBloc
                                .add(const UserProgramEvent.started());
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
                  ),
                );
              },
            );

          case UserProgramStateError():
            return const SizedBox();

          default:
            return const SizedBox();
        }
      },
    );
  }
}
