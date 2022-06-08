import 'dart:developer';

import 'package:flutter_test/flutter_test.dart';
import 'package:test_project/user.dart';

void main() {
  test('User Age Up', () async {
    User user = User(name: "Uğurcan", birthYear: 1998);

    user.ageUp();

    expect(user.birthYear, 1999);
  });

  test('User Age Down', () async {
    User user = User(name: "Uğurcan", birthYear: 1998);

    user.ageDown();

    expect(user.birthYear, 1997);
  });
}
