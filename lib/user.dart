import 'package:flutter/cupertino.dart';

class User extends ChangeNotifier {
  String name;
  int birthYear;

  User({required this.name, required this.birthYear});

  int get birtYear => birthYear;

  void ageUp() {
    birthYear++;
    notifyListeners();
  }

  void ageDown() {
    birthYear--;
    notifyListeners();
  }
}
