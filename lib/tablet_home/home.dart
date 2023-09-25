import 'package:cv_website/tablet_home/modules/apresentation/apresentation.dart';
import 'package:cv_website/tablet_home/widgets/language_button.dart';
import 'package:cv_website/tablet_home/widgets/theme_button.dart';
import 'package:cv_website/utils/utils_functions.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../controllers/app_controller.dart';
import 'modules/skill_tree/skill_tree.dart';

class TabletHome extends StatefulWidget {
  const TabletHome({Key? key}) : super(key: key);

  @override
  State<TabletHome> createState() => _TabletHomeState();
}

class _TabletHomeState extends State<TabletHome> {
  final appController = GetIt.I.get<AppController>();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Container(
                    child: ApresentationTablet(),
                  ),
                  SkillTreeTablet(),
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
                  LanguageButtonTablet(),
                  const SizedBox(width: 5),
                  ThemeButtonTablet(),
                ],
              ),),
            Align(alignment: Alignment.topLeft,
              child: websiteInProgress(),
            )
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
