import 'package:cv_website/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../utils/languages/english.dart';
import '../utils/languages/portuguese.dart';

part 'app_controller.g.dart';

class AppController = AppControllerBase with _$AppController;

abstract class AppControllerBase with Store {

  @observable
  String activeLanguage = "PT";

  @observable
  bool activeLightTheme = true;

  @observable
  ThemeData activeThemeData = LightTheme.themeData;

  @observable
  String activeFontFamily = LightTheme.fontFamily;

  @observable
  Color activePrimaryTheme = LightTheme.primaryTheme;

  @observable
  Color activeSecondaryTheme = LightTheme.secondaryTheme;

  @observable
  String myName = TextDataPT.myName;

  @observable
  String myProffision = TextDataPT.myProffision;

  @observable
  String myDescription = TextDataPT.myDescription;

  @observable
  String websiteProgress = TextDataPT.websiteProgress;

  @action
  void changeActiveLanguage(){
    activeLanguage = activeLanguage == 'PT' ? 'EN' : 'PT';
    if(activeLanguage == 'PT'){
      myName = TextDataPT.myName;
      myDescription = TextDataPT.myDescription;
      myProffision = TextDataPT.myProffision;
      websiteProgress = TextDataPT.websiteProgress;
    }else if(activeLanguage == 'EN'){
      myName = TextDataEN.myName;
      myDescription = TextDataEN.myDescription;
      myProffision = TextDataEN.myProffision;
      websiteProgress = TextDataEN.websiteProgress;
    }

  }

  @action
  void setTheme({required Color primary,required Color secondary,required ThemeData theme, required String fontFamily, required bool lightTheme}){
    activeSecondaryTheme = secondary;
    activePrimaryTheme = primary;
    activeThemeData = theme;
    activeFontFamily = fontFamily;
    activeLightTheme = lightTheme;
  }
}
