mixin ProgramValidationMixin {
  String? programNameValidator(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your program name';
    }
    return null;
  }

  String? programDescriptionValidator(String? value) {
    if (value!.length > 250) {
      return 'Please enter fewer than 250 words';
    }
    return null;
  }

  String? programCategoryValidator(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your program category';
    }
    if (value.length > 50) {
      return 'Please enter fewer than 50 words';
    }
    return null;
  }

  String? programExpectedTimeValidator(String? value) {
    if (value!.isEmpty) {
      return 'Please enter expected time';
    }
    if (value is! int) {
      return 'Please enter number';
    }
    return null;
  }
}
