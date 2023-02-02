
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/setting.dart';

ValueNotifier<Setting> setting = ValueNotifier(Setting());

Future<Setting> initSettings() async {
  Setting _setting = Setting();
  // final String url = '${GlobalConfiguration().getValue('api_base_url')}Api_delivery/settings';
  SharedPreferences prefs = await SharedPreferences.getInstance();
  _setting.brightness.value = prefs.getBool('isDark') ?? false ? ThemeMode.dark : ThemeMode.light;
  setting.value = _setting;

  setting.notifyListeners();

  return setting.value;
}

void setBrightness(Brightness brightness) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if (brightness == Brightness.dark) {
    prefs.setBool("isDark", true);
    brightness = Brightness.dark;
  } else {
    prefs.setBool("isDark", false);
    brightness = Brightness.light;
  }
}
