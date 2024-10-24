bool validateEmail(String email) {
  // Regular expression to validate email format
  RegExp emailRegExp = RegExp(
    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
  );

  return emailRegExp.hasMatch(email);
}

bool validatePhoneNumber(String phoneNumber) {
  // Regular expression for validating phone numbers
  final RegExp phoneRegExp = RegExp(r'^\+?[0-9]{7,15}$');

  // The phone number must contain only digits and can start with a + for country code
  return phoneRegExp.hasMatch(phoneNumber);
}

/// A function to validate if the password meets the following criteria:
/// - Contains at least one uppercase letter (A-Z)
/// - Contains at least one lowercase letter (a-z)
/// - Contains at least one digit (0-9)
/// - Contains at least one special character (symbol) from the set: !@#\$&*~
/// - Has a minimum length of 8 characters
///
/// Returns `true` if the password is valid according to the criteria,
/// otherwise returns `false`.
///
/// Example usage:
/// ```dart
/// bool isValid = validatePassword('Password123!');
/// print(isValid); // true
/// ```
bool validatePassword(String password) {
  // Regular expression to validate the password structure:
  // - (?=.*[A-Z]): Checks for at least one uppercase letter.
  // - (?=.*[a-z]): Checks for at least one lowercase letter.
  // - (?=.*[0-9]): Checks for at least one digit.
  // - (?=.*[!@#\$&*~]): Checks for at least one symbol from the set.
  // - .{8,}: Ensures the password is at least 8 characters long.
  final RegExp passwordRegExp = RegExp(
    r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#\$&*~]).{8,}$',
  );

  // Returns true if the password matches the regular expression pattern.
  return passwordRegExp.hasMatch(password);
}
