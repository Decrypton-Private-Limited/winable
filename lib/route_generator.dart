
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:winable/routes.dart';
import 'package:winable/src/pages/country_sclection_screen.dart';
import 'package:winable/src/pages/forgot_password_screen.dart';
import 'package:winable/src/pages/main_screen.dart';
import 'package:winable/src/pages/login_screen.dart';
import 'package:winable/src/pages/otp_screen.dart';
import 'package:winable/src/pages/register_screen.dart';
import 'package:winable/src/pages/splash_screen.dart';
import 'package:winable/src/pages/test_page.dart';
import 'package:winable/src/pages/wellcome_screen.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){

    // return PageRouteBuilder(
    //   settings: settings,
    //   pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    //     return FadeTransition(opacity: animation,child: ,);
    //
    // },
    // );

    final args = settings.arguments;
    print("navigating to ${settings.name}");
    switch(settings.name){
      case AppRoutes.splash: return MaterialPageRoute(builder: (_) => const AppSplashScreen());
      case AppRoutes.home: return MaterialPageRoute(builder: (_) => MainScreen());
      case AppRoutes.welcome: return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case AppRoutes.login: return MaterialPageRoute(builder: (_) => const LoginScreen());
      case AppRoutes.register: return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case AppRoutes.passwordReset: return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case AppRoutes.otpVerification: return MaterialPageRoute(builder: (_) => const OTPValidationScreen());
      case AppRoutes.country: return MaterialPageRoute(builder: (_) => const CountryScreen());


      default: return MaterialPageRoute(builder: (_) => const Scaffold(body: SizedBox(height: 0)));
    }
  }
}