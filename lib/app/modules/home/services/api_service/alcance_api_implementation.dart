import 'package:dio/dio.dart';
import 'package:valuu_app/app/modules/home/models/Feed/FeedItem.dart';
import 'package:valuu_app/app/modules/home/models/User/User.dart';
import 'package:valuu_app/app/modules/home/services/api_service/api_interface.dart';

class AlcanceApi implements ApiInterface {
  
  final Dio dio;

  AlcanceApi({this.dio});
  
  @override
  Future<User> login(String email, String password) async {
    try { 
      var loginResponse = await dio.post("api/v1/Account/Login", data: 
        {
          "email": email,
          "password": password,
          "grant_type": "password",
          "refreshToken": "string"
        } 
      );
      return User.fromJson(loginResponse.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  @override
  Future<List<FeedItem>> getFeedItems(String userToken, String organizationId, int pageNumber) async {
    try {
      var feedResponse = await dio.get("api/v1/Progress/Feeds", queryParameters: {
        "organizationId": organizationId,
        "pageNumber": pageNumber
      }, options: Options(headers: {
        "Authorization": "Bearer $userToken" 
      }));
        return (feedResponse.data['items'] as List).map((item) => FeedItem.fromJson(item)).toList();
    } on DioError catch (e) {
      throw (e.message);
    } 
  } 
}
