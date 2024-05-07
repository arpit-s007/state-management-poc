import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:newsapi_getx/src/pages/login/ui/login_page.dart';

void main() {
  testWidgets("Should have a title", (WidgetTester tester) async {
    // Arrange
    await tester.pumpWidget(const MaterialApp(
      home: LoginPage(),
    ));

    // Act
    Finder title = find.text("Login");

    //Assert
    expect(title, findsOneWidget);
  });

  testWidgets("Should have one text field to collect email",
          (WidgetTester tester) async {
        // Arrange
        await tester.pumpWidget(const MaterialApp(
          home: LoginPage(),
        ));

        // Act
        Finder userNameTextField = find.byKey(const ValueKey("email_id"));

        //Assert
        expect(userNameTextField, findsOneWidget);
      });

  testWidgets("Should have one text field to collect password",
          (WidgetTester tester) async {
        // Arrange
        await tester.pumpWidget(const MaterialApp(
          home: LoginPage(),
        ));

        // Act
        Finder passwordTextField = find.byKey(const ValueKey("password"));

        //Assert
        expect(passwordTextField, findsOneWidget);
      });

  testWidgets("Should have one login button",
          (WidgetTester tester) async {
        // Arrange
        await tester.pumpWidget(const MaterialApp(
          home: LoginPage(),
        ));

        // Act
        Finder loginButton = find.byType(ElevatedButton);

        //Assert
        expect(loginButton, findsOneWidget);
      });

  testWidgets("Should show required fields error message if user email id and password is empty", (WidgetTester tester) async{

    //Arrange
    await tester.pumpWidget(const MaterialApp(
      home: LoginPage(),
    ));

    //Act
    Finder loginButton = find.byType(ElevatedButton);
    await tester.tap(loginButton);
    await tester.pumpAndSettle();
    Finder errorText = find.text('Required field');

    //Assert
    expect(errorText, findsNWidgets(2));

  });

  testWidgets("Should submit form when user email and password is valid", (WidgetTester tester) async{
    await tester.pumpWidget(const MaterialApp(
      home: LoginPage(),
    ));

    Finder userNameTextField = find.byKey(const ValueKey("email_id"));
    Finder passwordTextField = find.byKey(const ValueKey("password"));

    await tester.enterText(userNameTextField, "arpit@gmail.com");
    await tester.enterText(passwordTextField, "arpit@gmail.com");

    Finder loginButton = find.byType(ElevatedButton);

    await tester.tap(loginButton);
    await tester.pumpAndSettle();

    Finder errorText = find.text('Required field');

    expect(errorText, findsNothing);
  });

}
