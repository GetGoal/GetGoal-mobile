mixin AuthValidationMixin {
  String? loginEmailValidator(String? value) {
    if (value!.isEmpty) {
      return 'Please enter valid email address';
    }
    return null;
  }
}
