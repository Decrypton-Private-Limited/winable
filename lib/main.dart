import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:winable/route_generator.dart';
import 'package:winable/src/model/setting.dart';
import 'package:winable/routes.dart';
import 'package:winable/src/ui/theme.dart';
import 'src/repository/settings_repository.dart' as settingRepo;

void main() {
  // GlobalConfiguration().loadFromAsset("configurations");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: settingRepo.setting,
      builder: (context, Setting setting, _){
          return MaterialApp(
            title: setting.appName,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: setting.brightness.value,
            initialRoute: AppRoutes.home,
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RouteGenerator.generateRoute,
          );
      },);
  }
}
