// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppController on AppControllerBase, Store {
  late final _$activeLanguageAtom =
      Atom(name: 'AppControllerBase.activeLanguage', context: context);

  @override
  String get activeLanguage {
    _$activeLanguageAtom.reportRead();
    return super.activeLanguage;
  }

  @override
  set activeLanguage(String value) {
    _$activeLanguageAtom.reportWrite(value, super.activeLanguage, () {
      super.activeLanguage = value;
    });
  }

  late final _$activeLightThemeAtom =
      Atom(name: 'AppControllerBase.activeLightTheme', context: context);

  @override
  bool get activeLightTheme {
    _$activeLightThemeAtom.reportRead();
    return super.activeLightTheme;
  }

  @override
  set activeLightTheme(bool value) {
    _$activeLightThemeAtom.reportWrite(value, super.activeLightTheme, () {
      super.activeLightTheme = value;
    });
  }

  late final _$activeThemeDataAtom =
      Atom(name: 'AppControllerBase.activeThemeData', context: context);

  @override
  ThemeData get activeThemeData {
    _$activeThemeDataAtom.reportRead();
    return super.activeThemeData;
  }

  @override
  set activeThemeData(ThemeData value) {
    _$activeThemeDataAtom.reportWrite(value, super.activeThemeData, () {
      super.activeThemeData = value;
    });
  }

  late final _$activeFontFamilyAtom =
      Atom(name: 'AppControllerBase.activeFontFamily', context: context);

  @override
  String get activeFontFamily {
    _$activeFontFamilyAtom.reportRead();
    return super.activeFontFamily;
  }

  @override
  set activeFontFamily(String value) {
    _$activeFontFamilyAtom.reportWrite(value, super.activeFontFamily, () {
      super.activeFontFamily = value;
    });
  }

  late final _$activePrimaryThemeAtom =
      Atom(name: 'AppControllerBase.activePrimaryTheme', context: context);

  @override
  Color get activePrimaryTheme {
    _$activePrimaryThemeAtom.reportRead();
    return super.activePrimaryTheme;
  }

  @override
  set activePrimaryTheme(Color value) {
    _$activePrimaryThemeAtom.reportWrite(value, super.activePrimaryTheme, () {
      super.activePrimaryTheme = value;
    });
  }

  late final _$activeSecondaryThemeAtom =
      Atom(name: 'AppControllerBase.activeSecondaryTheme', context: context);

  @override
  Color get activeSecondaryTheme {
    _$activeSecondaryThemeAtom.reportRead();
    return super.activeSecondaryTheme;
  }

  @override
  set activeSecondaryTheme(Color value) {
    _$activeSecondaryThemeAtom.reportWrite(value, super.activeSecondaryTheme,
        () {
      super.activeSecondaryTheme = value;
    });
  }

  late final _$myNameAtom =
      Atom(name: 'AppControllerBase.myName', context: context);

  @override
  String get myName {
    _$myNameAtom.reportRead();
    return super.myName;
  }

  @override
  set myName(String value) {
    _$myNameAtom.reportWrite(value, super.myName, () {
      super.myName = value;
    });
  }

  late final _$myProffisionAtom =
      Atom(name: 'AppControllerBase.myProffision', context: context);

  @override
  String get myProffision {
    _$myProffisionAtom.reportRead();
    return super.myProffision;
  }

  @override
  set myProffision(String value) {
    _$myProffisionAtom.reportWrite(value, super.myProffision, () {
      super.myProffision = value;
    });
  }

  late final _$myDescriptionAtom =
      Atom(name: 'AppControllerBase.myDescription', context: context);

  @override
  String get myDescription {
    _$myDescriptionAtom.reportRead();
    return super.myDescription;
  }

  @override
  set myDescription(String value) {
    _$myDescriptionAtom.reportWrite(value, super.myDescription, () {
      super.myDescription = value;
    });
  }

  late final _$AppControllerBaseActionController =
      ActionController(name: 'AppControllerBase', context: context);

  @override
  void changeActiveLanguage() {
    final _$actionInfo = _$AppControllerBaseActionController.startAction(
        name: 'AppControllerBase.changeActiveLanguage');
    try {
      return super.changeActiveLanguage();
    } finally {
      _$AppControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTheme(
      {required Color primary,
      required Color secondary,
      required ThemeData theme,
      required String fontFamily,
      required bool lightTheme}) {
    final _$actionInfo = _$AppControllerBaseActionController.startAction(
        name: 'AppControllerBase.setTheme');
    try {
      return super.setTheme(
          primary: primary,
          secondary: secondary,
          theme: theme,
          fontFamily: fontFamily,
          lightTheme: lightTheme);
    } finally {
      _$AppControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
activeLanguage: ${activeLanguage},
activeLightTheme: ${activeLightTheme},
activeThemeData: ${activeThemeData},
activeFontFamily: ${activeFontFamily},
activePrimaryTheme: ${activePrimaryTheme},
activeSecondaryTheme: ${activeSecondaryTheme},
myName: ${myName},
myProffision: ${myProffision},
myDescription: ${myDescription}
    ''';
  }
}
