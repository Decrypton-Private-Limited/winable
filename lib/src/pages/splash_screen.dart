import 'package:flutter/material.dart';
import 'package:winable/routes.dart';

class AppSplashScreen extends StatefulWidget {
  const AppSplashScreen({Key? key}) : super(key: key);
  @override
  State<AppSplashScreen> createState() => _AppSplashScreenState();
}

class _AppSplashScreenState extends State<AppSplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {

      Navigator.of(context).pushReplacementNamed(AppRoutes.welcome);

    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child:Image.asset("assets/img/logo.png",
              fit: BoxFit.cover,
            )
        ),
      ),
    );
  }
}
