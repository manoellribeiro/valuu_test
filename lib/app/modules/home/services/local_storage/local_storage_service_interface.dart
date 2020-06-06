
import 'package:valuu_app/app/modules/home/models/User/User.dart';

import '../../models/User/User.dart';

abstract class LocalStorageServiceInterface {

  Future<User> getUserData();
  Future storeUserData(Map<String, dynamic> jsonUserData);
  Future changeUserStatus(bool isUserLoggedIn);
  Future getUserStatus();
  
}