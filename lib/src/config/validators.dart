class Validator {
  static String? validateEmail(String input) {
    if(input.isEmpty) {
      return "Required field";
    }

    var pattern = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    if(!pattern.hasMatch(input)) {
      return "Please enter a valid email id";
    }
  }

  static String? validatePassword(String input) {
    if(input.isEmpty) {
      return "Required field";
    }

    if(input.length < 7) {
      return "Please enter a valid password";
    }
  }
}