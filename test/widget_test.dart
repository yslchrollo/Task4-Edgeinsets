import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rodrigo_act3/main.dart';

void main() {
  testWidgets('EdgeInsets demo renders AppBar and all four colored boxes', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Rodrigo_Activity 3'), findsOneWidget);
    expect(find.byType(SingleChildScrollView), findsOneWidget);
    expect(find.text('EdgeInsets.all(30)'), findsOneWidget);
    expect(
      find.text('EdgeInsets.symmetric(horizontal: 40, vertical: 10)'),
      findsOneWidget,
    );
    expect(
      find.text('EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)'),
      findsOneWidget,
    );
    expect(find.text('EdgeInsets.fromLTRB(10, 20, 30, 40)'), findsOneWidget);
  });
}
