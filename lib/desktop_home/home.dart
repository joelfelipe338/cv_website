import 'package:cv_website/desktop_home/modules/skill_tree/skill_tree.dart';
import 'package:cv_website/desktop_home/widgets/language_button.dart';
import 'package:cv_website/desktop_home/widgets/theme_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../controllers/app_controller.dart';
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
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: ApresentationDesktop(),
                      ),),
                      SkillTreeDesktop(),
                    ],
                  ),
                  Container(
                    height: screenSize(context).height * 0.7,
                    width: double.infinity,

                  )
                ],
              ),
            ),
            Align(alignment: Alignment.topRight,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                websiteInProgress(),
                const SizedBox(width: 5),
                LanguageButtonDesktop(),
                const SizedBox(width: 5),
                ThemeButtonDesktop(),
              ],
            ),)
          ],
        ));
  }

  Widget websiteInProgress(){
    return Observer(
      builder: (context) {
        return Text("(${appController.websiteProgress})",
          style: appController.activeThemeData.textTheme.displayMedium,);
      },
    );
  }

}
