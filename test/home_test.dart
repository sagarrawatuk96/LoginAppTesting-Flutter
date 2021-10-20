import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';
import 'package:untitled/home/controller/home_controller.dart';
import 'package:untitled/routes/pages.dart';
import 'package:untitled/routes/routes.dart';

Widget createMainApp() => GetMaterialApp(
      title: 'Login App',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.login,
      getPages: pages,
    );

void main() {
  group('Testing Homepage', () {
    testWidgets('Testing Home', (WidgetTester tester) async {
      await tester.pumpWidget(createMainApp());
      var homeViewController = Get.put(HomeViewController());
      homeViewController.toString();

      final emailField = find.byKey(const Key('email-field-key'));
      expect(emailField, findsOneWidget);

      final passwordField = find.byKey(const Key('password-field-key'));
      expect(passwordField, findsOneWidget);

      var loginButton = find.byKey(const Key('login-button-key'));
      expect(loginButton, findsOneWidget);

      await tester.enterText(emailField, 'sagarrawat');
      await tester.pumpAndSettle(const Duration(seconds: 1));

      expect(find.text('Please enter valid Email Address'), findsOneWidget);

      await tester.enterText(emailField, 'sagarrawat@gmail');
      await tester.pumpAndSettle(const Duration(seconds: 1));

      expect(find.text('Please enter valid Email Address'), findsOneWidget);

      await tester.enterText(emailField, 'sagarrawat@gmail.com');
      await tester.pumpAndSettle();

      expect(find.text('Please enter valid Email Address'), findsNothing);
      await tester.enterText(passwordField, 'Sagar');
      await tester.pumpAndSettle(const Duration(seconds: 1));

      expect(find.byIcon(Icons.check_circle), findsNWidgets(4));
      await tester.enterText(passwordField, 'Sagar12');
      await tester.pumpAndSettle(const Duration(seconds: 1));

      await tester.enterText(passwordField, 'Sagar12@');
      await tester.pumpAndSettle(const Duration(seconds: 1));

      await tester.tap(loginButton);
      await tester.pumpAndSettle();

      expect(find.text('Welcome'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.arrow_back).first);
      await tester.pumpAndSettle(const Duration(seconds: 1));

      expect(loginButton, findsOneWidget);
 
    });
  });
}
