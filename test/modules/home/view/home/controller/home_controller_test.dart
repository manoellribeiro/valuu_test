import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mockito/mockito.dart';
import 'package:valuu_app/app/app_module.dart';
import 'package:valuu_app/app/modules/home/home_module.dart';
import 'package:valuu_app/app/modules/home/models/Feed/FeedRequest.dart';
import 'package:valuu_app/app/modules/home/models/User/User.dart';
import 'package:valuu_app/app/modules/home/repository/user_repository.dart';
import 'package:valuu_app/app/modules/home/services/api_service/api_interface.dart';
import 'package:valuu_app/app/modules/home/services/local_storage/local_storage_service_interface.dart';
import 'package:valuu_app/app/modules/home/view/home/controller/home_controller.dart';

import '../../../jsons.dart';


class ApiServiceMock extends Mock implements ApiInterface{}
class LocalStorageMock extends Mock implements LocalStorageServiceInterface{}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  ApiServiceMock apiServiceMock = ApiServiceMock();
  LocalStorageMock localStorageMock = LocalStorageMock(); 


  when(localStorageMock.getUserStatus()).thenAnswer((_) async{
          return Future.value(false);
    });

    when(apiServiceMock.login("raisaspagnol6@gmail.com", "123456")).thenAnswer((_) async{
      return Future.value(User.fromJson(USER_JSON));
    });

    when(apiServiceMock.getFeedRequest(ACESS_TOKEN, ORGANIZATION_ID, 1)).thenAnswer((_) async{
      return Future.value(FeedRequest.fromJson(FIRST_FEED_JSON));
    });

    when(apiServiceMock.getFeedRequest(ACESS_TOKEN, ORGANIZATION_ID, 2)).thenAnswer((_) async{
      return Future.value(FeedRequest.fromJson(SECOND_FEED_JSON));
    });


  HomeController homeController = HomeController(
    apiService: apiServiceMock,
    userRepository: UserRepository(api: apiServiceMock, localStorage: localStorageMock)
     ); 


  group('HomeController tests', () { 
    test("if thereAreMoreItems returns true before the second feed request", () async {
        expect(homeController.thereAreMoreItems(), true);
    });

    test("if thereAreMoreItems returns false after the second feed request", () async {
        await homeController.fetchMoreFeedItems();
        expect(homeController.thereAreMoreItems(), false);
    });

    test("Get feed items service is not called if there is no more pages", () async {
        await homeController.fetchMoreFeedItems();
        await homeController.fetchMoreFeedItems();
        verifyNever(apiServiceMock.getFeedRequest(ACESS_TOKEN, ORGANIZATION_ID, 3));
    });
  });

}