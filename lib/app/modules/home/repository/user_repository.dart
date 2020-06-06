import 'package:valuu_app/app/modules/home/models/User/User.dart';
import 'package:valuu_app/app/modules/home/services/api_service/api_interface.dart';
import 'package:valuu_app/app/modules/home/services/local_storage/local_storage_service_interface.dart';

import '../models/User/User.dart';

class UserRepository {

  final LocalStorageServiceInterface localStorage;
  final ApiInterface api;

  UserRepository({this.localStorage, this.api});

  Future<User> getUserData() async {
    User user;
    if( await isLoginNeeded()){
      user = await api.login("raisaspagnol6@gmail.com", "123456"); 
      await localStorage.changeUserStatus(true);
      await localStorage.storeUserData(user.toJson());
      return user;
    }
    user = await localStorage.getUserData();
    return user;
  }

  Future<bool> isLoginNeeded() async {
    bool userStatus = await localStorage.getUserStatus();
    return (userStatus == null || userStatus == false);
  }
  
}