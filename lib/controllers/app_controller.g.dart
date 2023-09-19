// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppController on AppControllerBase, Store {
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

  late final _$AppControllerBaseActionController =
      ActionController(name: 'AppControllerBase', context: context);

  @override
  void setTheme(
      {required Color primary,
      required Color secondary,
      required ThemeData theme,
      required String fontFamily}) {
    final _$actionInfo = _$AppControllerBaseActionController.startAction(
        name: 'AppControllerBase.setTheme');
    try {
      return super.setTheme(
          primary: primary,
          secondary: secondary,
          theme: theme,
          fontFamily: fontFamily);
    } finally {
      _$AppControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
activeThemeData: ${activeThemeData},
activeFontFamily: ${activeFontFamily},
activePrimaryTheme: ${activePrimaryTheme},
activeSecondaryTheme: ${activeSecondaryTheme}
    ''';
  }
}
