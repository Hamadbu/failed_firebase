class AuthValidators {
  String? userNameValidator(String? val) {
    if (val != null && val.length > 3) {
      return null;
    } else {
      return "User name must be more than 3 characters";
    }
  }

  String? passwordVlidator(String? val) {
    final String password = val as String;

    if (password.length <= 5) {
      return "Password must have at least 6 characters";
    }
    return null;
  }

  String? emailValidator(String? val) {
    if (val != null) {
      final bool emailValid = RegExp(
              r'^[a-zA-Z\d.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z\d-]+(?:\.[a-zA-Z\d-]+)*$')
          .hasMatch(val);
      if (emailValid) {
        return null;
      }
    }
    return "Email is Not Valid";
  }
}
