class Validators {
  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  /// Password Check
  ///
  /// (?=.*[A-Za-z]) : Must have A-Z or a-z
  /// (?=.*\d) : Must have number
  /// [A-Za-z\d!$%@#£€*?&] :
  ///   Match A-Za-z
  ///   Match \d decimals
  ///   Match allowed symbols : !$%@#£€*?&
  /// {8,} : Minimum 8 characters
  static final RegExp _passwordRegExp = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d!$%@#£€*?&]{8,}$',
  );

  static bool isValidEmail(String email) {
    return _emailRegExp.hasMatch(email);
  }

  static bool isValidPassword(String password) {
    return _passwordRegExp.hasMatch(password);
  }
}
