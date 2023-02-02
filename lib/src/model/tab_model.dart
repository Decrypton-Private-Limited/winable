
import 'package:flutter/material.dart';

import '../util/home_page_routes.dart';

class TabModel{
  String label;
  String debugName;
  String path;
  late Navigator navigator;
  GlobalKey<NavigatorState> key;

  TabModel(this.label,this.debugName,this.path,this.key){
    // key = GlobalKey(debugLabel: debugName);
    navigator = Navigator(key: key,onGenerateRoute: HomePageRoutes.generateHomeRoutes,initialRoute: path,);

}

}