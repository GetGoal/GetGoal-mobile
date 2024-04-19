import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../config/i18n/strings.g.dart';
import '../../../../../config/route_config.dart';
import '../../../../../shared/app_cache.dart';
import '../../../../../shared/icon.dart';
import '../../../../../shared/mixins/validation/program_validation_mixin.dart';
import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/font.dart';
import '../../../../../shared/themes/spacing.dart';
import '../../../../../shared/utils/string_extension.dart';
import '../../../../../shared/widgets/button/circle_button.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/icon/custom_icon.dart';
import '../../../../../shared/widgets/input/multi_selector.dart';
import '../../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';
import '../../../../../shared/widgets/text/get_goal_gradient_text.dart';
import '../../../../../shared/widgets/text_field/dropdown_input_field.dart';
import '../../../../../shared/widgets/text_field/normal_text_input_field.dart';
import '../../../../../shared/widgets/text_field/upload_file_input.dart';
import '../../../../auth/presentation/screens/preference/widgets/preference_chip.dart';
import '../../../domain/entities/program.dart';
import '../../../domain/entities/program_create.dart';
import '../../../domain/entities/program_filter.dart';
import '../../bloc/program_category/program_category_bloc.dart';
import '../../bloc/program_edit/program_edit_bloc.dart';
import '../../enum/program_form_mode.enum.dart';
import 'program_task_create.dart';

class ProgramCreatePageData {
  ProgramCreatePageData({
    this.mode,
    this.programId,
  });

  final PROGRAMFORMMODE? mode;
  final String? programId;
}

class ProgramCreatePage extends StatefulWidget {
  const ProgramCreatePage({
    super.key,
    this.pageData,
  });

  @override
  State<ProgramCreatePage> createState() => _ProgramCreatePageState();

  final ProgramCreatePageData? pageData;
}

class _ProgramCreatePageState extends State<ProgramCreatePage>
    with ProgramValidationMixin {
  ProgramEditBloc get _programEditBloc => context.read<ProgramEditBloc>();
  ProgramCategoryBloc get _programCategoryBloc =>
      context.read<ProgramCategoryBloc>();

  final _formKey = GlobalKey<FormState>();
  final _dropdownKey = GlobalKey<FormFieldState>();
  final _programNameTextInputController = TextEditingController();
  final _programDescriptionTextInputController = TextEditingController();
  final _programCategoryTextInputController = TextEditingController();
  final _programTimeUnitTextInputController = TextEditingController();
  final _programSuffixUnitTextInputController = TextEditingController();
  String _imagePath = '';
  File _imageFile = File('');
  String _firebaseImagePath = '';
  List<Label> _categorySelected = [];
  String _selectedTimeSuffix = 'Day(s)';

  @override
  void initState() {
    _programEditBloc.add(
      ProgramEditEvent.started(programId: widget.pageData!.programId),
    );
    _programCategoryBloc.add(const ProgramCategoryEvent.started(labels: []));
    super.initState();
  }

  @override
  void dispose() {
    _programNameTextInputController.dispose();
    _programDescriptionTextInputController.dispose();
    _programCategoryTextInputController.dispose();
    _programTimeUnitTextInputController.dispose();
    _programSuffixUnitTextInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetGoalSubScaffold(
      appbarTitle: getTitleName(
        widget.pageData!.mode ?? PROGRAMFORMMODE.unknown,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(
            AppSpacing.appMargin,
          ),
          child: _buildProgramCreateForm(),
        ),
      ),
    );
  }

  Widget _buildProgramCreateForm() {
    return BlocConsumer<ProgramEditBloc, ProgramEditState>(
      listener: (context, state) {
        switch (state) {
          case ProgramEditStateInitial(:final program):
            if (program == null) return;
            _firebaseImagePath = program.programImage!;
            _programNameTextInputController.text = program.programName!;
            if (program.programDesc != '') {
              _programDescriptionTextInputController.text =
                  program.programDesc!;
            }
            if (program.labels!.isNotEmpty) {
              _programCategoryBloc
                  .add(ProgramCategoryEvent.started(labels: program.labels!));
              _categorySelected = program.labels!;
            }

            final timeSplit = program.expectedTime!.split(' ');
            _programTimeUnitTextInputController.text = timeSplit[0];
            _programSuffixUnitTextInputController.text = timeSplit[1];

            _selectedTimeSuffix = timeSplit[1];

            AppCache.programTaskCreateList = program.tasks!;
            break;
        }
      },
      builder: (context, state) {
        switch (state) {
          case ProgramEditStateInitial():
            return _buildProgramCreateLoading();

          case ProgramEditStateLoading():
            return _buildProgramCreateLoading();

          case ProgramEditStateEditedSuccess():
            return Form(
              key: _formKey,
              child: Column(
                children: [
                  _buildProgramPreviewImage(),
                  const SizedBox(height: 20),
                  _buildProgramNameFieldInput(),
                  const SizedBox(height: 20),
                  _buildDescriptionFieldInput(),
                  const SizedBox(height: 20),
                  _buildCategoryFieldInput(),
                  const SizedBox(height: 20),
                  _buildExpectedTimeFieldInput(),
                  _buildNextPageButton(),
                  const SizedBox(height: 20),
                ],
              ),
            );

          default:
            return const SizedBox();
        }
      },
    );
  }

  Widget _buildProgramPreviewImage() {
    // Display image from Firebase
    if (_firebaseImagePath != '') {
      return Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: 252,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                _firebaseImagePath,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Container(
              margin: const EdgeInsets.all(8),
              child: CircleButton(
                onTap: () {
                  setState(() {
                    _firebaseImagePath = '';
                  });
                },
                icon: CustomIcon(
                  icon: AppIcon.trash_icon,
                  size: 8,
                  iconColor: AppColors.red,
                ),
              ),
            ),
          ),
        ],
      );
    }

    // Display image from file that choose from user device
    if (_imageFile.path.isNotEmpty) {
      return Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: 252,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.file(
                _imageFile,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Container(
              margin: const EdgeInsets.all(8),
              child: CircleButton(
                onTap: () {
                  setState(() {
                    _imageFile = File('');
                  });
                },
                icon: CustomIcon(
                  icon: AppIcon.trash_icon,
                  size: 8,
                  iconColor: AppColors.red,
                ),
              ),
            ),
          ),
        ],
      );
    }

    return UploadFileInput(
      label: Translations.of(context).create_program.upload_your_image,
      onTap: () async {
        final image = await ImagePicker().pickImage(
          source: ImageSource.gallery,
        );

        setState(() {
          _imageFile = File(image!.path);
          _imagePath = image.path;
        });
      },
    );
  }

  Widget _buildProgramCreateLoading() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: CircularProgressIndicator(
          color: AppColors.primary,
        ),
      ),
    );
  }

  Widget _buildProgramNameFieldInput() {
    return NormalTextInputField(
      controller: _programNameTextInputController,
      label: Translations.of(context).create_program.program_name,
      hintText: Translations.of(context).create_program.ex_program_name,
      validator: programNameValidator,
    );
  }

  Widget _buildDescriptionFieldInput() {
    return NormalTextInputField(
      controller: _programDescriptionTextInputController,
      label: Translations.of(context).create_program.description,
      hintText: Translations.of(context).create_program.ex_description,
      maxLines: null,
      validator: programDescriptionValidator,
    );
  }

  Widget _buildCategoryFieldInput() {
    return BlocConsumer<ProgramCategoryBloc, ProgramCategoryState>(
      listener: (context, state) {},
      builder: (context, state) {
        switch (state) {
          case ProgramCategoryStateSuccess(:final labels):
            final selectedLabel = labels.where((e) => e.isSelected!).toList();

            return MultiSelector(
              label: Translations.of(context).create_program.category,
              categoryList: selectedLabel,
              bottomSheet: _buildBottomSheet(context),
            );
          default:
            return const SizedBox();
        }
      },
    );
  }

  Widget _buildExpectedTimeFieldInput() {
    List<String> data = <String>[
      'Minute(s)',
      'Hour(s)',
      'Day(s)',
      'Week(s)',
      'Month(s)',
      'Year(s)',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.create_program.expected_time,
          style: subHeadlineBold().copyWith(color: AppColors.description),
        ),
        const SizedBox(height: 8.0),
        StaggeredGrid.count(
          crossAxisCount: 7,
          crossAxisSpacing: 16,
          children: [
            // Value
            StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 2,
              child: NormalTextInputField(
                keyboardType: TextInputType.number,
                isHideLabel: true,
                controller: _programTimeUnitTextInputController,
                hintText:
                    Translations.of(context).create_program.ex_expected_time,
                validator: programExpectedTimeValidator,
                textInputFormatter: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
            ),
            // Time unit
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 1,
              child: DropdownInputField(
                key: _dropdownKey,
                value: _selectedTimeSuffix,
                hintText: Translations.of(context).create_task.set_noti,
                dropdownData: data,
                onChanged: (value) {
                  _programSuffixUnitTextInputController.text = value!;
                  _selectedTimeSuffix = value;
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildNextPageButton() {
    return MainButton(
      buttonText: Translations.of(context).create_program.next_button,
      onTap: () {
        if (_formKey.currentState!.validate()) {
          final expectedTime =
              '${_programTimeUnitTextInputController.text} $_selectedTimeSuffix';

          final ProgramCreate program = ProgramCreate(
            imagePath: _imagePath != '' ? _imagePath : _firebaseImagePath,
            programName: _programNameTextInputController.text,
            programDescription: _programDescriptionTextInputController.text,
            category: _categorySelected,
            expectedTime: expectedTime,
          );

          AppCache.programCreate = program;

          context.pushNamed(
            Routes.programTaskCreatePage,
            extra: ProgramTaskCreatePageData(
              mode: widget.pageData!.mode,
              programId: widget.pageData!.programId,
            ),
          );
        }
      },
    );
  }

  String getTitleName(PROGRAMFORMMODE mode) {
    switch (mode) {
      case PROGRAMFORMMODE.create:
        return Translations.of(context).create_program.create_program;
      case PROGRAMFORMMODE.edit:
        return Translations.of(context).edit_program.edit_program;
      default:
        return 'Unknown';
    }
  }

  Widget _buildBottomSheet(
    BuildContext context,
  ) {
    return Container(
      height: 640,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: AppColors.secondary,
        boxShadow: AppShadow.shadow,
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                100,
              ),
              color: Colors.white30,
            ),
            width: 36,
            child: const SizedBox(
              height: 4,
              width: 36,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 24),
            width: MediaQuery.of(context).size.width,
            child: Text(
              'Please select your category',
              style: bodyBold().copyWith(color: AppColors.white),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              'Can select more than one.',
              style: footnoteRegular().copyWith(color: AppColors.description),
            ),
          ),
          const SizedBox(height: 24),
          _buildCategoryList(
            context,
            _programCategoryBloc,
          ),
          const SizedBox(height: 24),
          MainButton(
            buttonText: 'Close',
            onTap: () => context.pop(),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryList(
    BuildContext context,
    ProgramCategoryBloc bloc,
  ) {
    return BlocBuilder<ProgramCategoryBloc, ProgramCategoryState>(
      bloc: bloc,
      builder: (context, state) {
        switch (state) {
          case ProgramCategoryStateSuccess(:final labels):
            return BlocListener<ProgramCategoryBloc, ProgramCategoryState>(
              bloc: bloc,
              listener: (context, state) {
                switch (state) {
                  case ProgramCategoryStateSuccess(:final labels):
                    final selectedList =
                        labels.where((e) => e.isSelected!).toList();

                    final labelSelectedList = selectedList
                        .map((e) => Label(labelName: e.labelName))
                        .toList();

                    _categorySelected = labelSelectedList;
                    break;
                  default:
                    break;
                }
              },
              child: Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Wrap(
                    children: List<Widget>.generate(
                      labels.length + 1,
                      (int index) {
                        if (index == labels.length) {
                          return GestureDetector(
                            onTap: () => _showAddCategoryDialog(labels),
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
                              labelName: labels[index].labelName ?? '',
                              isSelected: labels[index].isSelected!,
                              onTab: (bool isSelected) {
                                final labelList = labels.toList();
                                final label = ProgramFilter.label(
                                  labelId: labels[index].labelId,
                                  labelName: labels[index].labelName,
                                  updatedAt: null,
                                  isSelected: isSelected,
                                );
                                labelList[index] = label;

                                _programCategoryBloc.add(
                                  ProgramCategoryEvent.onCategoryTapped(
                                    labels: labelList,
                                  ),
                                );
                              },
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ),
              ),
            );
          default:
            return const SizedBox();
        }
      },
    );
  }

  void _showAddCategoryDialog(List<ProgramFilter> labels) async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: AppColors.secondary,
          content: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add new category',
                  style: bodyBold().copyWith(),
                ),
                const SizedBox(height: 16),
                NormalTextInputField(
                  label: 'Category name',
                  controller: _programCategoryTextInputController,
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      child: GestureDetector(
                        onTap: () => context.pop(),
                        child: GetGoalGradientText(
                          'Close',
                          style: bodyRegular(),
                          textAlign: TextAlign.center,
                          gradient: [
                            AppColors.description,
                            AppColors.description,
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 24),
                    SizedBox(
                      child: GestureDetector(
                        onTap: () {
                          final labelList = labels.toList();
                          final currentCategory = ProgramFilter.label(
                            labelName: _programCategoryTextInputController.text
                                .toCapitalize()
                                .trim(),
                            updatedAt: null,
                            isSelected: true,
                          );

                          _programCategoryBloc.add(
                            ProgramCategoryEvent.onAddNewCategory(
                              labels: labelList,
                              currentCategory: currentCategory,
                            ),
                          );
                          _programCategoryTextInputController.clear();
                          context.pop();
                        },
                        child: GetGoalGradientText(
                          'Add',
                          style: bodyRegular(),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
