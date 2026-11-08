import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/main.dart';

void main() {

  testWidgets(
    'Menu contains all items',
    (tester) async {

      await tester.pumpWidget(
        const PizzaStoreApp(),
      );

      expect(
        find.text('Vegetable Pizza'),
        findsOneWidget,
      );

      expect(
        find.text('Cheese Pizza'),
        findsOneWidget,
      );

      expect(
        find.text('Box of Fries'),
        findsOneWidget,
      );
    },
  );
}