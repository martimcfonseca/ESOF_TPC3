import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:hello_world/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Name change acceptance test', () {
    testWidgets('tapping the button toggles the name between Martim and Jorge', (WidgetTester tester) async {
          app.main();
          await tester.pumpAndSettle();

          // Initial state
          expect(find.text('Hi! my name is Martim!'), findsOneWidget);

          // First tap — Martim → Jorge
          await tester.tap(find.byKey(const Key('change_name_button')));
          await tester.pumpAndSettle();
          expect(find.text('Hi! my name is Jorge!'), findsOneWidget);

          // Second tap — Jorge → Martim
          await tester.tap(find.byKey(const Key('change_name_button')));
          await tester.pumpAndSettle();
          expect(find.text('Hi! my name is Martim!'), findsOneWidget);
        });
  });
}