import 'package:flutter_modular/flutter_modular.dart';
import 'package:valuu_app/app/modules/home/repository/user_repository.dart';
import 'package:valuu_app/app/modules/home/services/api_service/api_interface.dart';
import 'package:valuu_app/app/modules/home/view/home/controller/home_controller.dart';
import 'package:valuu_app/app/modules/home/view/home/screen/home_page.dart';


class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(
          apiService: Modular.get<ApiInterface>(),
          userRepository: Modular.get<UserRepository>(),
          )),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
