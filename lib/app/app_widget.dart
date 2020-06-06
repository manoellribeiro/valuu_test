import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'config/size_config.dart';
import 'config/stylings.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
            return OrientationBuilder(
              builder: (context, orientation){
                SizeConfig().init(constraints, orientation);
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  navigatorKey: Modular.navigatorKey,
                  title: 'Flutter Slidy',
                  theme: AppTheme.lightThemeHome,
                  initialRoute: '/',
                  onGenerateRoute: Modular.generateRoute,
                );
          });
      }
    );
  }
}
