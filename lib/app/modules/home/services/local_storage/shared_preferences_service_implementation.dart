import 'dart:async';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:valuu_app/app/modules/home/models/User/User.dart';
import 'package:valuu_app/app/modules/home/services/local_storage/local_storage_service_interface.dart';

import '../../models/User/User.dart';

class SharedPreferencesService implements LocalStorageServiceInterface {

  @override
  Future<User> getUserData() async {
    final prefs = await SharedPreferences.getInstance();
    return User.fromJson(json.decode(prefs.getString("userData")));
  }

  @override
  Future storeUserData(Map<String, dynamic>  jsonUserData) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("userData", json.encode(jsonUserData));
  }

  @override
  Future changeUserStatus(bool isUserLoggedIn) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool("isUserLoggedIn", isUserLoggedIn);
  }

  @override
  Future getUserStatus() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool("isUserLoggedIn");
  }

}