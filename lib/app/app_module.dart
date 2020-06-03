import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:valuu_app/app/modules/home/repository/user_repository.dart';
import 'package:valuu_app/app/modules/home/services/api_service/alcance_api_implementation.dart';
import 'package:valuu_app/app/modules/home/services/local_storage/shared_preferences_service_implementation.dart';
import 'package:valuu_app/app/modules/home/utils/constants.dart';

import 'app_widget.dart';
import 'modules/home/home_module.dart';
import 'modules/home/models/User/User.dart';
import 'modules/home/services/api_service/api_interface.dart';
import 'modules/home/services/local_storage/local_storage_service_interface.dart';


class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => BaseOptions(baseUrl: BASE_URL), singleton: true, lazy: false),
        Bind((i) => Dio(Modular.get<BaseOptions>()), singleton: true, lazy: false),
        Bind((i) => AlcanceApi(dio: Modular.get<Dio>()), singleton: true, lazy: false),
        Bind((i) => SharedPreferencesService(), singleton: true, lazy: false),
        Bind((i) => User(), lazy: true, singleton: true), 
        Bind((i) => UserRepository(
          api: Modular.get<ApiInterface>(),
          localStorage: Modular.get<LocalStorageServiceInterface>(),
          user: Modular.get<User>()
          )), 
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
