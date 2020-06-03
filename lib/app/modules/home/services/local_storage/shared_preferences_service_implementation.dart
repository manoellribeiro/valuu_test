import 'dart:async';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:valuu_app/app/modules/home/services/local_storage/local_storage_service_interface.dart';

class SharedPreferencesService implements LocalStorageServiceInterface {

  @override
  Future<Map<String, dynamic>> getUserData() async {
    final prefs = await SharedPreferences.getInstance();
    return json.decode(prefs.getString("userData"));
  }

  @override
  Future storeUserData(Map<String, dynamic>  jsonUserData) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("userData", json.encode(jsonUserData));
  }

}