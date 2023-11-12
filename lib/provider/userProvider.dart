// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String userName;
  int count;

  UserProvider({
    this.userName = "Emmie",
    this.count = 0,
  });
  void changUserName(String newName) {
    userName = newName;
    notifyListeners();
  }

  void incrementCount() {
    count++;
    notifyListeners();
  }
}
