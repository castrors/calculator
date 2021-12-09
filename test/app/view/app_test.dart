// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:calculator/app/app.dart';
import 'package:calculator/calculator/view/calculator_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CalculatorPage()', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(CalculatorPage), findsOneWidget);
    });
  });
}
