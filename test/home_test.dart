import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:untitled/routes/pages.dart';
import 'package:untitled/routes/routes.dart';

Widget createMainApp() => GetMaterialApp(
      title: 'Login App',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.navigation,
      getPages: pages,
    );
void main() {
  group('Home page tests', () {
    testWidgets('Testing widgets on homepage', (WidgetTester tester) async {
      await tester.pumpWidget(createMainApp());
      await tester.tap(find.byKey(const Key('tab_2')));
      await tester.pumpAndSettle(const Duration(seconds: 1));

      await tester.tap(find.byKey(const Key('tab_3')));
      await tester.pumpAndSettle(const Duration(seconds: 1));

      await tester.tap(find.byKey(const Key('tab_1')));
      await tester.pumpAndSettle(const Duration(seconds: 1));

      await tester.fling(find.byType(SingleChildScrollView),const Offset(0, -300),3000);
      expect(find.byKey(const Key('top_0')), findsOneWidget);

      await tester.fling(find.byType(ListView),const Offset(-300, 0),3000);
      expect(find.byKey(const Key('top_5')), findsOneWidget);

    });
  });
}
