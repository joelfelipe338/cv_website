import 'package:flutter/material.dart';
import 'package:flutter_app_icons/flutter_app_icons.dart';
import 'package:get_it/get_it.dart';

import '../controllers/app_controller.dart';
import '../modules/apresentation/apresentation.dart';
import '../utils/constantes.dart';
import '../utils/theme.dart';
import '../utils/utils_functions.dart';

class DesktopHome extends StatefulWidget {
  const DesktopHome({Key? key}) : super(key: key);

  @override
  State<DesktopHome> createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {

  final appController = GetIt.I.get<AppController>();

  bool _lightTheme = true;

  @override
  Widget build(BuildContext context) {
    final _flutterAppIconsPlugin = FlutterAppIcons();
    return Container(
        color: appController.activePrimaryTheme,
        padding: const EdgeInsets.all(40),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Expanded(child: Container(
                      child: Apresentation(),
                    ),),
                    Expanded(child: Container()),
                  ],
                ),
                Container(
                  height: screenSize(context).height * 0.7,
                  width: double.infinity,

                )
              ],
            ),
            Align(alignment: Alignment.topRight,
            child: IconButton(icon:_lightTheme ? Icon(Icons.dark_mode, color: LightTheme.secondaryTheme,) : Icon(Icons.light_mode, color: DarkTheme.secondaryTheme,), onPressed: (){
                _lightTheme = !_lightTheme;
                _flutterAppIconsPlugin.setIcon(icon: _lightTheme ? 'light_favicon.ico' : 'dark_favicon.ico');
                appController.setTheme(
                  theme: _lightTheme ? LightTheme.themeData : DarkTheme.themeData,
                  primary: _lightTheme ? LightTheme.primaryTheme : DarkTheme.primaryTheme,
                  secondary: _lightTheme ? LightTheme.secondaryTheme : DarkTheme.secondaryTheme,
                  fontFamily: _lightTheme ? LightTheme.fontFamily : DarkTheme.fontFamily,
                );

            },),)
          ],
        ));
  }
}
