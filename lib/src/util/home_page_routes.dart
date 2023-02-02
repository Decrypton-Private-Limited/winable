

import 'package:flutter/cupertino.dart';
import 'package:winable/src/pages/home_pages/contest.dart';
import 'package:winable/src/pages/home_pages/my_matches.dart';
import 'package:winable/src/pages/home_pages/settings_page.dart';
import 'package:winable/src/pages/home_pages/winner_page.dart';

import '../pages/home_pages/home_page.dart';
import '../pages/home_pages/my_profile.dart';

class HomePageRoutes{
  static const home="Home";
  static const myMatches="My_Matches";
  static const myProfile="My_Profile";
  static const settingsRoute="Settings";
  static const winner="Winner";
  static const contest="Contest";

  String tabName;
  HomePageRoutes({required this.tabName});

  static routeBuilder(Widget page) => PageRouteBuilder(pageBuilder: (_, __, ___) =>page);
  static Route generateHomeRoutes(RouteSettings settings){
    switch(settings.name){
      case home : return routeBuilder(const HomePage());
      case myMatches : return routeBuilder(const MyMatchesPage());
      case myProfile : return routeBuilder(const MyProfilePage());
      case settingsRoute : return routeBuilder(const SettingsPage());
      case winner : return routeBuilder(const WinnerPage());
      case contest : return routeBuilder(const Contest());
      default :  return routeBuilder(const HomePage());
    }
  }
}