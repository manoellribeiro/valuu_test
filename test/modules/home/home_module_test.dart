import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mockito/mockito.dart';
import 'package:valuu_app/app/app_module.dart';
import 'package:valuu_app/app/modules/home/home_module.dart';
import 'package:valuu_app/app/modules/home/repository/user_repository.dart';
import 'package:valuu_app/app/modules/home/services/api_service/api_interface.dart';
import 'package:valuu_app/app/modules/home/services/local_storage/local_storage_service_interface.dart';
import 'package:valuu_app/app/modules/home/view/home/controller/home_controller.dart';

class ApiServiceMock extends Mock implements ApiInterface{}
class LocalStorageMock extends Mock implements LocalStorageServiceInterface{}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  initModule(
    AppModule(),
    initialModule: true,
    changeBinds: [
      Bind<ApiInterface>((i) => ApiServiceMock()),
      Bind<LocalStorageServiceInterface>((i) => LocalStorageMock()),
      Bind<UserRepository>((i) => UserRepository(
          api: Modular.get<ApiInterface>(),
          localStorage: Modular.get<LocalStorageServiceInterface>()
      )),
    ]
    );
  initModule(
   HomeModule(),
   initialModule: false,
   changeBinds: [
     Bind<HomeController>((i) => HomeController(
          apiService: Modular.get<ApiInterface>(),
          userRepository: Modular.get<UserRepository>(),
          )),
   ]
   );
  HomeController homeController;

  setUp(() async  {
    homeController = Modular.get<HomeController>(); 
  });

  group('HomeModule instances tests', () {
    test("HomeModule has a instance of HomeController", () {
      expect(homeController, isInstanceOf<HomeController>());
    });
  });
}