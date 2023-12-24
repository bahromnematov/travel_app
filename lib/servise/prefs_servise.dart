import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_app/model/user.dart';

class PrefsServise {
  static storeName(String name) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setString("name", name);
  }

  static Future<String?> loadName() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return _prefs.getString("name");
  }

  static Future<bool?> removeName() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return _prefs.remove("name");
  }


  //object shared prefs storage
  static storeUser(User user) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String stringuser = jsonEncode(user);
    await _prefs.setString("user", stringuser);
  }

  static Future<User?> loadUser() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? stringuser = _prefs.getString("user");
    if (stringuser == null || stringuser.isEmpty) {
      return null;
    } else {
      Map<String, dynamic> map = jsonDecode(stringuser);
      return User.fromJson(map);
    }
  }

  static Future<bool> removeUser() async{
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return _prefs.remove("user");
  }

}
