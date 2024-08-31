extension Validations on String {
  bool isValidEmail() {
    return (contains("@") && length > 5 && endsWith(".eg"));
  }

  bool isValidPassword() {
    return (trim().length > 7);
  }
}
