import 'package:flutter/material.dart';
import 'package:flutter_app_icons/flutter_app_icons.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
            child: Observer(
                builder: (_) {
                  return IconButton(icon:appController.activeLightTheme ? Icon(Icons.dark_mode, color: LightTheme.secondaryTheme,) : Icon(Icons.light_mode, color: DarkTheme.secondaryTheme,), onPressed: (){
                    _flutterAppIconsPlugin.setIcon(icon: !appController.activeLightTheme ? 'light_favicon.ico' : 'dark_favicon.ico');
                    appController.setTheme(
                        theme: !appController.activeLightTheme ? LightTheme.themeData : DarkTheme.themeData,
                        primary: !appController.activeLightTheme ? LightTheme.primaryTheme : DarkTheme.primaryTheme,
                        secondary: !appController.activeLightTheme ? LightTheme.secondaryTheme : DarkTheme.secondaryTheme,
                        fontFamily: !appController.activeLightTheme ? LightTheme.fontFamily : DarkTheme.fontFamily,
                        lightTheme: !appController.activeLightTheme
                    );

                  },);
                },
              ),)
          ],
        ));
  }
}
