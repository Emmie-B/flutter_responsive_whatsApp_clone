import 'package:flutter/material.dart';
import 'package:prv_tute/api/api.dart';
import 'package:prv_tute/userModel.dart';

class DataClass extends ChangeNotifier {
  List<User>? users ;
  bool isLoading = false;

  getUser() async {
    await ApiServices.fetchUsers().then((newUser) async {
      isLoading = true;
      users = await newUser;
      isLoading = false;
      notifyListeners();
    });
  }
}
