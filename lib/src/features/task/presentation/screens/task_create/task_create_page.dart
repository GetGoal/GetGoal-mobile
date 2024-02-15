import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../../../../shared/icon.dart';
import '../../../../../shared/mixins/validation/task_validation_mixin.dart';
import '../../../../../shared/themes/font.dart';
import '../../../../../shared/themes/spacing.dart';
import '../../../../../shared/widgets/button/main_botton.dart';
import '../../../../../shared/widgets/checkbox/getgoal_checkbox.dart';
import '../../../../../shared/widgets/scaffold/get_goal_sub_scaffold.dart';
import '../../../../../shared/widgets/text_field/dropdown_input_field.dart';
import '../../../../../shared/widgets/text_field/normal_text_input_field.dart';
import '../../enum/task_form_mode_enum.dart';

class TaskCreatePage extends StatefulWidget {
  const TaskCreatePage({
    super.key,
    this.mode,
  });

  @override
  State<TaskCreatePage> createState() => _TaskCreatePageState();

  final TASKFORMMODE? mode;
}

class _TaskCreatePageState extends State<TaskCreatePage>
    with TaskValidationMixin {
  final _formKey = GlobalKey<FormState>();
  final _taskNameInputController = TextEditingController();
  final _taskDescriptionInputController = TextEditingController();
  final _taskCategoryInputController = TextEditingController();
  final _taskStartDateInputController = TextEditingController();
  final _taskTimeInputController = TextEditingController();
  final _taskRemiderInputController = TextEditingController();

  @override
  void dispose() {
    _taskNameInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetGoalSubScaffold(
      appbarTitle: getPageTitle(widget.mode ?? TASKFORMMODE.unknown),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(
            AppSpacing.appMargin,
          ),
          child: Form(
            key: _formKey,
            child: Column(
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
                _buildReminderField(),
                const SizedBox(height: 40),
                _buildSubmitButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTaskNameInputField() {
    return NormalTextInputField(
      controller: _taskNameInputController,
      label: 'Task name',
      hintText: 'Ex. Make your bed',
      validator: taskNameValidator,
    );
  }

  Widget _buildDecriptionInputField() {
    return NormalTextInputField(
      controller: _taskDescriptionInputController,
      label: 'Description',
      hintText: 'Your description',
      maxLines: null,
      validator: taskDescriptionValidator,
    );
  }

  Widget _buildCategoryInputField() {
    return NormalTextInputField(
      controller: _taskCategoryInputController,
      label: 'Category',
      hintText: 'Ex. Routine',
      validator: taskCategoryValidator,
    );
  }

  Widget _buildStartDateInputField() {
    return NormalTextInputField(
      controller: _taskStartDateInputController,
      label: 'Starting date',
      readOnly: true,
      hintText: 'Ex. 09/12/2024',
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
      label: 'Time',
      readOnly: true,
      hintText: 'Ex. 8:00 AM',
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
            const GetGoalCheckbox(),
            const SizedBox(width: 8.0),
            Text(
              'Allow notification',
              style: body1(),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildReminderField() {
    List<String> data = <String>[
      'None',
      '5 Minute before start',
      '10 Minute before start',
      '15 Minute before start',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Reminder', style: body1()),
        const SizedBox(height: 8),
        DropdownInputField(
          hintText: 'Set your notification',
          dropdownData: data,
          onChanged: (value) {
            _taskRemiderInputController.text = value.toString();
          },
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return MainButton(
      buttonText: 'Create',
      onTap: () {
        if (_formKey.currentState!.validate()) {}
      },
    );
  }

  String getPageTitle(TASKFORMMODE mode) {
    switch (mode) {
      case TASKFORMMODE.create:
        return 'Create Task';
      case TASKFORMMODE.edit:
        return 'Task Settings';
      default:
        return 'Unknown';
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
      setState(() {
        _taskStartDateInputController.text =
            DateFormat.yMd('th_TH').format(date);
      });
    }
  }

  void _selectTime() async {
    TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.dial,
    );

    if (time != null) {
      setState(() {
        _taskTimeInputController.text = time.format(context);
      });
    }
  }
}
