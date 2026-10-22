// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:expense_tracker/main.dart';

void main() {
  testWidgets('splash screen opens the expense overview', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('pennyday'), findsOneWidget);
    expect(find.text('Track expenses.\nStay on budget.'), findsOneWidget);
    expect(find.text('₱2,840.50'), findsOneWidget);
    expect(find.text('Get started'), findsOneWidget);

    await tester.tap(find.text('Get started'));
    await tester.pumpAndSettle();

    expect(find.text('Your overview'), findsOneWidget);
    expect(find.text('Morning coffee'), findsOneWidget);
  });
}
