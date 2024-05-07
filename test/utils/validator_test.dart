import 'package:flutter_test/flutter_test.dart';
import 'package:newsapi_getx/src/config/validators.dart';

void main() {
  test('Validate for empty email id', () {
    // Arrange
    var result = Validator.validateEmail('dfskdjfh');

    expect(result, 'Required field');
  });
}