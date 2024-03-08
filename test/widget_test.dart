import 'package:flutter_test/flutter_test.dart';

import 'package:getgoal_mobile/src/get_goal_app.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const GetGoalApp());
  });
}
