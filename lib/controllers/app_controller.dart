import 'package:cv_website/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

class AppController = AppControllerBase with _$AppController;

abstract class AppControllerBase with Store {
  @observable
  ThemeData activeThemeData = LightTheme.themeData;

  @observable
  String activeFontFamily = LightTheme.fontFamily;

  @observable
  Color activePrimaryTheme = LightTheme.primaryTheme;

  @observable
  Color activeSecondaryTheme = LightTheme.secondaryTheme;

  @action
  void setTheme({required Color primary,required Color secondary,required ThemeData theme, required String fontFamily}){
    activeSecondaryTheme = secondary;
    activePrimaryTheme = primary;
    activeThemeData = theme;
    activeFontFamily = fontFamily;
  }
}
