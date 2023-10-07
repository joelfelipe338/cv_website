import 'package:cv_website/mobile_home/widgets/language_button.dart';
import 'package:cv_website/mobile_home/widgets/theme_button.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../controllers/app_controller.dart';
import '../utils/utils_functions.dart';
import 'modules/apresentation/apresentation.dart';
import 'modules/skill_tree/skill_tree.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  final appController = GetIt.I.get<AppController>();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                children: [
                  Container(
                    child: ApresentationMobile(),
                  ),
                  SkillTreeMobile(),

                ],
              ),
            ),
            Align(alignment: Alignment.topRight,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LanguageButtonMobile(),
                  const SizedBox(width: 5),
                  ThemeButtonMobile(),
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
          style: appController.activeThemeData.textTheme.displaySmall,);
      },
    );
  }
}
