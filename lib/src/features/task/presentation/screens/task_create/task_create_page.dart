import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../../../config/i18n/strings.g.dart';
import '../../../../../config/route_config.dart';
import '../../../../../shared/app_cache.dart';
import '../../../../../shared/icon.dart';
import '../../../../../shared/mixins/validation/task_validation_mixin.dart';
import '../../../../../shared/themes/color.dart';
import '../../../../../shared/themes/font.dart';
import '../../../../../shared/themes/spacing.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/checkbox/getgoal_checkbox.dart';
import '../../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';
import '../../../../../shared/widgets/text_field/dropdown_input_field.dart';
import '../../../../../shared/widgets/text_field/normal_text_input_field.dart';
import '../../../../program/presentation/screens/program_create/program_task_create.dart';
import '../../../domain/models/task.dart';
import '../../bloc/task_create/task_create_bloc.dart';
import '../../enum/task_form_mode_enum.dart';

class TaskCreatePageData {
  TaskCreatePageData({
    this.mode,
    this.taskId,
    this.task,
    this.taskIndex,
  });

  final TASKFORMMODE? mode;
  final String? taskId;
  final Task? task;
  final int? taskIndex;
}

class TaskCreatePage extends StatefulWidget {
  const TaskCreatePage({
    super.key,
    this.pageData,
  });

  @override
  State<TaskCreatePage> createState() => _TaskCreatePageState();

  final TaskCreatePageData? pageData;
}

class _TaskCreatePageState extends State<TaskCreatePage>
    with TaskValidationMixin {
  TaskCreateBloc get _taskCreateBloc => context.read<TaskCreateBloc>();

  final _formKey = GlobalKey<FormState>();
  final _taskNameInputController = TextEditingController();
  final _taskDescriptionInputController = TextEditingController();
  final _taskCategoryInputController = TextEditingController();
  final _taskStartDateInputController = TextEditingController();
  final _taskTimeInputController = TextEditingController();
  final _taskRemiderInputController = TextEditingController();
  bool _isAllowNoti = false;
  String _selectedTime = '';
  String _selectedDate = '';

  @override
  void initState() {
    _taskCreateBloc
        .add(TaskCreateEvent.started(taskId: widget.pageData!.taskId));

    super.initState();
  }

  @override
  void dispose() {
    _taskNameInputController.dispose();
    _taskDescriptionInputController.dispose();
    _taskCategoryInputController.dispose();
    _taskStartDateInputController.dispose();
    _taskTimeInputController.dispose();
    _taskRemiderInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetGoalSubScaffold(
      appbarTitle: getPageTitle(widget.pageData!.mode ?? TASKFORMMODE.unknown),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(
            AppSpacing.appMargin,
          ),
          child: Form(
            key: _formKey,
            child: BlocConsumer<TaskCreateBloc, TaskCreateState>(
              listener: (context, state) {},
              builder: (context, state) {
                switch (state) {
                  case TaskCreateStateInitial():
                    return _buildTaskCreateLoading();
                  case TaskCreateStateLoading():
                    return _buildTaskCreateLoading();
                  case TaskCreateStateLoadedSuccess(:final task):
                    if (task != null) {
                      _taskNameInputController.text = task.taskName!;
                      _taskDescriptionInputController.text =
                          task.taskDescription!;
                      _taskCategoryInputController.text = task.category!;
                      _taskStartDateInputController.text =
                          DateFormat.yMd('th_TH')
                              .format(DateTime.parse(task.startTime!));
                      List time = DateFormat.Hm()
                          .format((DateTime.parse(task.startTime!)))
                          .split(':');
                      _selectedDate = formatDate(
                        DateFormat.yMd('th_TH')
                            .format(DateTime.parse(task.startTime!)),
                      );
                      TimeOfDay formatedTime = TimeOfDay(
                        hour: int.parse(time[0]),
                        minute: int.parse(time[1]),
                      );

                      _selectedTime = formatTime(formatedTime);

                      _taskTimeInputController.text =
                          formatedTime.format(context);
                      _isAllowNoti = task.isSetNotification == 1 ? true : false;
                      _taskRemiderInputController.text =
                          '${task.timeBeforeNotify} Minute before start';
                    }
                    if (widget.pageData!.task != null) {
                      _taskNameInputController.text =
                          widget.pageData!.task!.taskName!;
                      _taskDescriptionInputController.text =
                          widget.pageData!.task!.taskDescription!;
                      _taskCategoryInputController.text =
                          widget.pageData!.task!.category!;
                      _taskStartDateInputController.text =
                          DateFormat.yMd('th_TH').format(DateTime.parse(
                              widget.pageData!.task!.startTime!));
                      List time = DateFormat.Hm()
                          .format((DateTime.parse(
                              widget.pageData!.task!.startTime!)))
                          .split(':');
                      _selectedDate = formatDate(
                        DateFormat.yMd('th_TH').format(
                            DateTime.parse(widget.pageData!.task!.startTime!)),
                      );
                      TimeOfDay formatedTime = TimeOfDay(
                        hour: int.parse(time[0]),
                        minute: int.parse(time[1]),
                      );

                      _selectedTime = formatTime(formatedTime);

                      _taskTimeInputController.text =
                          formatedTime.format(context);
                      _isAllowNoti =
                          widget.pageData!.task!.isSetNotification == 1
                              ? true
                              : false;
                      _taskRemiderInputController.text =
                          '${widget.pageData!.task!.timeBeforeNotify} Minute before start';
                    }
                    return _buildTaskCreateLoadedSuccess();
                  case TaskCreateStateError():
                    return Container();
                  default:
                    return const SizedBox();
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTaskCreateLoading() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: CircularProgressIndicator(
          color: AppColors.primary,
        ),
      ),
    );
  }

  Widget _buildTaskCreateLoadedSuccess() {
    return Column(
      children: [
        _buildTaskNameInputField(),
        const SizedBox(height: 20),
        _buildDecriptionInputField(),
        const SizedBox(height: 20),
        _buildCategoryInputField(),
        const SizedBox(height: 20),
        _buildStartDateInputField(),
        const SizedBox(height: 20),
        _buildTimeInputField(),
        const SizedBox(height: 20),
        _buildNotificationCheckbox(),
        const SizedBox(height: 20),
        _isAllowNoti ? _buildReminderField() : const SizedBox(),
        const SizedBox(height: 40),
        _buildSubmitButton(),
      ],
    );
  }

  Widget _buildTaskNameInputField() {
    return NormalTextInputField(
      controller: _taskNameInputController,
      label: Translations.of(context).create_task.task_name,
      hintText: Translations.of(context).create_task.ex_task_name,
      validator: taskNameValidator,
    );
  }

  Widget _buildDecriptionInputField() {
    return NormalTextInputField(
      controller: _taskDescriptionInputController,
      label: Translations.of(context).create_task.description,
      hintText: Translations.of(context).create_task.ex_description,
      maxLines: null,
      validator: taskDescriptionValidator,
    );
  }

  Widget _buildCategoryInputField() {
    return NormalTextInputField(
      controller: _taskCategoryInputController,
      label: Translations.of(context).create_task.category,
      hintText: Translations.of(context).create_task.ex_category,
      validator: taskCategoryValidator,
    );
  }

  Widget _buildStartDateInputField() {
    return NormalTextInputField(
      controller: _taskStartDateInputController,
      label: Translations.of(context).create_task.start_date,
      readOnly: true,
      hintText: Translations.of(context).create_task.ex_start_date,
      suffixIcon: SvgPicture.asset(
        AppIcon.calendar_icon,
        fit: BoxFit.scaleDown,
      ),
      onTap: _selectStartDate,
      validator: taskStartDateValidator,
    );
  }

  Widget _buildTimeInputField() {
    return NormalTextInputField(
      controller: _taskTimeInputController,
      label: Translations.of(context).create_task.time,
      readOnly: true,
      hintText: Translations.of(context).create_task.ex_time,
      suffixIcon: SvgPicture.asset(
        AppIcon.duration_time_icon,
        fit: BoxFit.scaleDown,
      ),
      onTap: _selectTime,
      validator: taskTimeValidator,
    );
  }

  Widget _buildNotificationCheckbox() {
    return Column(
      children: [
        Row(
          children: [
            GetGoalCheckbox(
              value: _isAllowNoti,
              onTap: () {
                _isAllowNoti = !_isAllowNoti;
                _taskRemiderInputController.text = '';
              },
            ),
            const SizedBox(width: 8.0),
            Text(
              Translations.of(context).create_task.allow_noti,
              style: body1(),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildReminderField() {
    List<String> data = <String>[
      '5 Minute before start',
      '10 Minute before start',
      '15 Minute before start',
      '20 Minute before start',
      '25 Minute before start',
      '30 Minute before start',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(Translations.of(context).create_task.reminder, style: body1()),
        const SizedBox(height: 8),
        DropdownInputField(
          hintText: Translations.of(context).create_task.set_noti,
          dropdownData: data,
          onChanged: (value) {
            _taskRemiderInputController.text = value!;
          },
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return MainButton(
      buttonText: getButtonName(widget.pageData!.mode!),
      onTap: () async {
        final task = Task(
          taskName: _taskNameInputController.text,
          taskDescription: _taskDescriptionInputController.text,
          category: _taskCategoryInputController.text,
          startTime: '${_selectedDate}T${_selectedTime}Z',
          isSetNotification: _isAllowNoti ? 1 : 0,
          timeBeforeNotify: _isAllowNoti
              ? int.parse(_taskRemiderInputController.text.split(' ')[0])
              : 0,
        );
        if (_formKey.currentState!.validate()) {
          if (widget.pageData!.mode == TASKFORMMODE.create) {
            _taskCreateBloc.add(TaskCreateEvent.onCreate(task: task));
          }
          if (widget.pageData!.mode == TASKFORMMODE.edit) {
            _taskCreateBloc.add(
              TaskCreateEvent.onEdit(
                task: task,
                taskId: widget.pageData!.taskId!,
              ),
            );
          }
          if (widget.pageData!.mode == TASKFORMMODE.program) {
            AppCache.programTaskCreateList.add(task);
            context.pop(true);
          }
          if (widget.pageData!.mode == TASKFORMMODE.programCreate) {
            AppCache.programTaskCreateList[widget.pageData!.taskIndex!] = task;
            context.pop(true);
          }
        }
      },
    );
  }

  String getPageTitle(TASKFORMMODE mode) {
    switch (mode) {
      case TASKFORMMODE.create:
        return Translations.of(context).create_task.create_task;
      case TASKFORMMODE.edit:
        return Translations.of(context).edit_task.task_setting;
      default:
        return Translations.of(context).create_task.create_task;
    }
  }

  String getButtonName(TASKFORMMODE mode) {
    switch (mode) {
      case TASKFORMMODE.create:
        return Translations.of(context).create_task.create_button;
      case TASKFORMMODE.edit:
        return Translations.of(context).create_task.save_button;
      case TASKFORMMODE.programCreate:
        return Translations.of(context).create_task.save_button;
      default:
        return Translations.of(context).create_task.create_button;
    }
  }

  void _selectStartDate() async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );

    if (date != null) {
      List splitDate = DateFormat.yMd('th_TH').format(date).split('/');
      // setState(() {
      _taskStartDateInputController.text = DateFormat.yMd('th_TH').format(date);
      _selectedDate =
          '${splitDate[2]}-${int.parse(splitDate[1]) < 10 ? '0${splitDate[1]}' : '$splitDate'}-${splitDate[0]}';
      // });
    }
  }

  void _selectTime() async {
    TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.dialOnly,
    );

    if (time != null) {
      // setState(() {
      _selectedTime =
          '${time.hour < 10 ? '0${time.hour}' : time.hour}:${time.minute}:00';
      _taskTimeInputController.text = time.format(context);
      // });
    }
  }

  String formatDate(String date) {
    List splitDate = date.split('/');

    return '${splitDate[2]}-${int.parse(splitDate[1]) < 10 ? '0${splitDate[1]}' : '$splitDate'}-${splitDate[0]}';
  }

  String formatTime(TimeOfDay time) {
    return '${time.hour < 10 ? '0${time.hour}' : time.hour}:${time.minute < 10 ? '0${time.minute}' : time.minute}:00';
  }
}
