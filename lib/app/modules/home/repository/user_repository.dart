import 'package:valuu_app/app/modules/home/models/User/User.dart';
import 'package:valuu_app/app/modules/home/services/api_service/api_interface.dart';
import 'package:valuu_app/app/modules/home/services/local_storage/local_storage_service_interface.dart';

class UserRepository {

  final LocalStorageServiceInterface localStorage;
  final ApiInterface api;
  User user;

  UserRepository({this.localStorage, this.api, this.user}){
    storeUserData();
  }

  storeUserData() async {
    localStorage.storeUserData((await api.login("raisaspagnol6@gmail.com", "123456")).toJson());
  }

}