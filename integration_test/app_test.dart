import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:integration_test/integration_test.dart";
import '../lib/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group("Buton tıklama Testleri", () {
    testWidgets("1 saniye beklemeli 10 kez butona basma testi", (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();
      final Finder button = find.byIcon(Icons.add);
      for (var i = 0; i < 10; i++) {
        await tester.tap(button);
        await Future.delayed(const Duration(seconds: 1));
      }
      await tester.pumpAndSettle();

      expect(find.text("20"), findsOneWidget);
    });

    testWidgets("2 saniye beklemeli 3 kez butona basma testi", (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();
      final Finder button = find.byIcon(Icons.add);
      for (var i = 0; i < 3; i++) {
        await tester.tap(button);
        await Future.delayed(const Duration(seconds: 2));
      }
      await tester.pumpAndSettle();

      expect(find.text("13"), findsOneWidget);
    });
  });
}
