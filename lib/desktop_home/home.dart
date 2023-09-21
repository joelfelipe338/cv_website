import 'package:cv_website/desktop_home/widgets/language_button.dart';
import 'package:cv_website/desktop_home/widgets/theme_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_icons/flutter_app_icons.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../controllers/app_controller.dart';
import '../utils/constantes.dart';
import '../utils/theme.dart';
import '../utils/utils_functions.dart';
import 'modules/apresentation/apresentation.dart';

class DesktopHome extends StatefulWidget {
  const DesktopHome({Key? key}) : super(key: key);

  @override
  State<DesktopHome> createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {

  final appController = GetIt.I.get<AppController>();

  @override
  Widget build(BuildContext context) {
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
            child:Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LanguageButton(),
                SizedBox(width: 5),
                ThemeButton(),
              ],
            ),)
          ],
        ));
  }

}
