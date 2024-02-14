mixin TaskValidationMixin {
  String? taskNameValidator(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your task name';
    }
    return null;
  }

  String? taskDescriptionValidator(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your task description';
    }
    if (value.length > 250) {
      return 'Please enter fewer than 250 words';
    }
    return null;
  }

  String? taskCategoryValidator(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your task category';
    }
    if (value.length > 250) {
      return 'Please enter fewer than 250 words';
    }
    return null;
  }

  String? taskStartDateValidator(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your task start date';
    }

    return null;
  }

  String? taskTimeValidator(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your task time';
    }

    return null;
  }
}
