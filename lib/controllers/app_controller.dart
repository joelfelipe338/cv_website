import 'package:cv_website/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../utils/languages/english.dart';
import '../utils/languages/portuguese.dart';

part 'app_controller.g.dart';

class AppController = AppControllerBase with _$AppController;

abstract class AppControllerBase with Store {

  @observable
  List<Map<String, dynamic>> skillList = TextDataPT.skillList;

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
  Color subColorTheme = LightTheme.subColorTheme;

  @observable
  String myName = TextDataPT.myName;

  @observable
  String myProffision = TextDataPT.myProffision;

  @observable
  String myDescription = TextDataPT.myDescription;

  @observable
  String websiteProgress = TextDataPT.websiteProgress;

  @observable
  String skillTree = TextDataPT.skillTree;

  @observable
  String acquiredSkills = TextDataPT.acquiredSkills;

  @observable
  String developingSkills = TextDataPT.developingSkills;

  @observable
  String futureSkills = TextDataPT.futureSkills;

  @observable
  String floatingActionButtonText = TextDataPT.floatingActionButtonText;

  @action
  void changeActiveLanguage(){
    activeLanguage = activeLanguage == 'PT' ? 'EN' : 'PT';

    Map<String,Function()> changeLanguage = {
      "PT": usePT,
      "EN": useEN,
    };

    changeLanguage[activeLanguage]!();


  }

  @action
  void setTheme({required Color primary,required Color secondary,required ThemeData theme, required String fontFamily, required bool lightTheme, required subColorTheme}){
    activeSecondaryTheme = secondary;
    activePrimaryTheme = primary;
    activeThemeData = theme;
    activeFontFamily = fontFamily;
    activeLightTheme = lightTheme;
    subColorTheme = subColorTheme;
  }

  void useEN(){
    myName = TextDataEN.myName;
    myDescription = TextDataEN.myDescription;
    myProffision = TextDataEN.myProffision;
    websiteProgress = TextDataEN.websiteProgress;
    skillTree = TextDataEN.skillTree;
    acquiredSkills = TextDataEN.acquiredSkills;
    developingSkills = TextDataEN.developingSkills;
    futureSkills = TextDataEN.futureSkills;
    skillList = TextDataEN.skillList;
    floatingActionButtonText = TextDataEN.floatingActionButtonText;
  }

  void usePT(){
    myName = TextDataPT.myName;
    myDescription = TextDataPT.myDescription;
    myProffision = TextDataPT.myProffision;
    websiteProgress = TextDataPT.websiteProgress;
    skillTree = TextDataPT.skillTree;
    acquiredSkills = TextDataPT.acquiredSkills;
    developingSkills = TextDataPT.developingSkills;
    futureSkills = TextDataPT.futureSkills;
    skillList = TextDataPT.skillList;
    floatingActionButtonText = TextDataPT.floatingActionButtonText;
  }
}
