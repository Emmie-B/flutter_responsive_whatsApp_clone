import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:prv_tute/userModel.dart';

class ApiServices {


 static Future<List<User>> fetchUsers() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var res = jsonDecode(response.body) as List;
      // var user = User.fromJson(res.body);
      List<User> users = res.map((e) => User.fromJson(e)).toList();
      print(users);
      return users;
    } else {
      print(response.statusCode);
    }
    return [];
  }



}
