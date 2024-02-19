mixin AuthValidationMixin {
  String? emailValidator(String? value) {
    if (value == null) return '';
    RegExp regEx = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$",
    );
    if (!regEx.hasMatch(value)) {
      return 'Please enter valid email address';
    }

    if (value.isEmpty) {
      return 'Please enter Email address';
    }

    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null) return '';

    if (value.isEmpty) {
      return 'Please enter password';
    }
    if (value.length < 8) {
      return 'Password must has at least 8 letters';
    }
    return null;
  }

  String? firstNameValidator(String? value) {
    if (value == null) return '';

    if (value.isEmpty) {
      return 'Please enter first name';
    }

    return null;
  }

  String? lastNameValidator(String? value) {
    if (value == null) return '';

    if (value.isEmpty) {
      return 'Please enter your last name';
    }

    return null;
  }
}
