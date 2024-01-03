
import 'package:flutter_app_icons/flutter_app_icons.dart';
import 'package:get_it/get_it.dart';

import '../../controllers/app_controller.dart';
import '../../utils/theme.dart';

final appController = GetIt.I.get<AppController>();
final _flutterAppIconsPlugin = FlutterAppIcons();


changeTheme(){

  appController.setTheme(
      theme: appController.activeLightTheme ? DarkTheme.themeData : LightTheme.themeData,
      primary: appController.activeLightTheme ? DarkTheme.primaryTheme : LightTheme.primaryTheme,
      secondary: appController.activeLightTheme ? DarkTheme.secondaryTheme : LightTheme.secondaryTheme,
      fontFamily: appController.activeLightTheme ? DarkTheme.fontFamily : LightTheme.fontFamily,
      subColorTheme: appController.activeLightTheme ? DarkTheme.subColorTheme : LightTheme.subColorTheme,
      lightTheme: !appController.activeLightTheme
  );

  _flutterAppIconsPlugin.setIcon(icon: appController.activeLightTheme ? 'light_favicon.ico' : 'dark_favicon.ico');

}

changeLanguage(){
  appController.changeActiveLanguage();
}

String getInactiveLanguage(String activeLanguage){
  return activeLanguage == 'PT' ? 'EN' : 'PT';
}