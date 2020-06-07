import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:valuu_app/app/app_module.dart';
import 'package:valuu_app/app/modules/home/repository/user_repository.dart';
import 'package:valuu_app/app/modules/home/services/api_service/api_interface.dart';
import 'package:valuu_app/app/modules/home/services/local_storage/local_storage_service_interface.dart';


void main() {
  initModule(AppModule(), initialModule: true);
  BaseOptions baseOptions;
  Dio dio;
  ApiInterface apiInterface;
  LocalStorageServiceInterface localStorageServiceInterface;
  UserRepository userRepository;

  setUp(() async  {
    baseOptions = Modular.get<BaseOptions>();
    dio = Modular.get<Dio>();
    apiInterface = Modular.get<ApiInterface>();
    localStorageServiceInterface = Modular.get<LocalStorageServiceInterface>();
    userRepository = Modular.get<UserRepository>();
  });

  group('AppModule instances tests', () {

    test("AppModule has a instance of BaseOptions", () {
      expect(baseOptions, isInstanceOf<BaseOptions>());
    });
    test("AppModule has a instance of Dio", () {
      expect(dio, isInstanceOf<Dio>());
    });
    test("AppModule has a instance of ApiInterface", () {
      expect(apiInterface, isInstanceOf<ApiInterface>());
    });
    test("AppModule has a instance of LocalStorageServiceInterface", () {
      expect(localStorageServiceInterface, isInstanceOf<LocalStorageServiceInterface>());
    });
    test("AppModule has a instance of UserRepository", () {
      expect(userRepository, isInstanceOf<UserRepository>());
    });
  });
}