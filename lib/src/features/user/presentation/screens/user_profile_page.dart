import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/i18n/strings.g.dart';
import '../../../../config/route_config.dart';
import '../../../../shared/app_cache.dart';
import '../../../../shared/themes/color.dart';
import '../../../../shared/themes/font.dart';
import '../../../../shared/themes/spacing.dart';
import '../../../../shared/widgets/dialog/error_dialog.dart';
import '../../../../shared/widgets/text/get_goal_gradient_text.dart';
import '../../../program/domain/entities/program.dart';
import '../../../program/presentation/bloc/delete_program/delete_program_bloc.dart';
import '../../../program/presentation/enum/program_form_mode.enum.dart';
import '../../../program/presentation/screens/program/widgets/program_card.dart';
import '../../../program/presentation/screens/program_create/program_create_page.dart';
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

  int selected = 0;

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
          _userProfileBloc.add(const UserProfileEvent.started());
          switch (selected) {
            case 0:
              _userProgramBloc.add(const UserProgramEvent.started());
              break;
            case 1:
              _userProgramBloc.add(const UserProgramEvent.onSaveTapped());
              break;
            case 2:
              _userProgramBloc.add(const UserProgramEvent.onJoinTapped());
              break;

            default:
          }
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
                const SizedBox(height: 24),
                _buildMenuSelector(),
                const SizedBox(height: 16),
                _buildFeedSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUserProfileInfo() {
    return BlocConsumer<UserProfileBloc, UserProfileState>(
      listener: (context, state) {},
      builder: (context, state) {
        switch (state) {
          case UserProfileStateInitial():
            return const SizedBox();
          case UserProfileStateLoading():
            return const SizedBox();
          case UserProfileStateLoadedSuccess(:final user):
            return Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: SizedBox(
                    width: 96,
                    height: 96,
                    child: Image.asset('assets/images/user_profile.png'),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '${user.firstName} ${user.lastName}',
                  style: title2Bold(),
                ),
              ],
            );
          case UserProfileStateError():
            return Text('Error', style: title1());
          default:
            return const SizedBox();
        }
      },
    );
  }

  Widget _buildLogoutButton() {
    return BlocConsumer<LogoutBloc, LogoutState>(
      listener: (context, state) {
        switch (state) {
          case LogoutStateloaggedOut():
            context.go(Routes.landingPage);
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
                  color: AppColors.secondary,
                  border: Border.all(
                    color: AppColors.red,
                  ),
                ),
                child: Text(
                  Translations.of(context).user_profile.logout,
                  style: caption1Regular(),
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
    return Container(
      height: 36,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        boxShadow: AppShadow.shadow,
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selected = 0;
                _userProgramBloc.add(const UserProgramEvent.started());
              });
            },
            child: Container(
              decoration: BoxDecoration(
                border: selected == 0
                    ? BorderDirectional(
                        bottom: BorderSide(color: AppColors.primary2),
                      )
                    : null,
              ),
              alignment: Alignment.center,
              width: 96,
              child: GetGoalGradientText(
                Translations.of(context).user_profile.display_your_program,
                gradient: selected == 0
                    ? [AppColors.primary, AppColors.primary2]
                    : [AppColors.description, AppColors.description],
                style: caption1Regular(),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selected = 1;
              });
              _userProgramBloc.add(const UserProgramEvent.onSaveTapped());
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: selected == 1
                    ? BorderDirectional(
                        bottom: BorderSide(color: AppColors.primary2),
                      )
                    : null,
              ),
              width: 96,
              child: GetGoalGradientText(
                Translations.of(context).user_profile.display_save_program,
                gradient: selected == 1
                    ? [AppColors.primary, AppColors.primary2]
                    : [AppColors.description, AppColors.description],
                style: caption1Regular(),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selected = 2;
              });
              _userProgramBloc.add(const UserProgramEvent.onJoinTapped());
            },
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
              child: GetGoalGradientText(
                Translations.of(context).user_profile.display_applied_program,
                gradient: selected == 2
                    ? [AppColors.primary, AppColors.primary2]
                    : [AppColors.description, AppColors.description],
                style: caption1Regular(),
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
            return ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: programList.length,
              separatorBuilder: (context, index) => Divider(
                color: AppColors.stroke,
              ),
              itemBuilder: (context, index) {
                return ProgramCard(
                  isShowMenu: true,
                  isShowSaveButton: false,
                  onTab: () => context.push(
                    '/program_info/${programList[index].programId}',
                  ),
                  programImage: programList[index].programImage,
                  programName: programList[index].programName,
                  programDesc: programList[index].programDesc,
                  rating: programList[index].rating,
                  duration: programList[index].expectedTime,
                  label:
                      Label(labelName: programList[index].labels![0].labelName),
                  createdAt: DateTime.now().toString(),
                  owner: programList[index].owner,
                  onAnalytics: () {
                    context.pushNamed(
                      Routes.programStatisticsPage,
                      pathParameters: {
                        'id': programList[index].programId.toString(),
                      },
                    );
                  },
                  onEdit: () async {
                    bool? isRefresh = await context.pushNamed(
                      Routes.programCreatePage,
                      extra: ProgramCreatePageData(
                        mode: PROGRAMFORMMODE.edit,
                        programId: programList[index].programId.toString(),
                      ),
                    );
                    if (isRefresh!) {
                      Future.delayed(const Duration(seconds: 1), () {
                        _userProgramBloc.add(const UserProgramEvent.started());
                      });
                      AppCache.programTaskCreateList = [];
                    }
                  },
                  onDelete: () {
                    _deleteProgramBloc.add(
                      DeleteProgramEvent.onDelete(
                        programId: programList[index].programId.toString(),
                        imageUrl: programList[index].programImage,
                      ),
                    );

                    Future.delayed(const Duration(seconds: 1), () {
                      _userProgramBloc.add(const UserProgramEvent.started());
                    });
                  },
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
