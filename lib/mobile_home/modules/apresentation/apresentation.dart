import 'package:cv_website/desktop_home/modules/apresentation/widgets/download_cv_button.dart';
import 'package:cv_website/desktop_home/modules/apresentation/widgets/github_contact.dart';
import 'package:cv_website/desktop_home/modules/apresentation/widgets/linkedin_contact.dart';
import 'package:cv_website/desktop_home/modules/apresentation/widgets/whatsapp_contact.dart';
import 'package:cv_website/utils/theme.dart';
import 'package:cv_website/utils/utils_functions.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../controllers/app_controller.dart';


class ApresentationMobile extends StatefulWidget {
  const ApresentationMobile({Key? key}) : super(key: key);

  @override
  State<ApresentationMobile> createState() => _ApresentationMobileState();
}

class _ApresentationMobileState extends State<ApresentationMobile> {

  final appController = GetIt.I.get<AppController>();

  @override
  Widget build(BuildContext context) {
    return Center(child: Observer(
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(appController.myName,
              style: appController.activeThemeData.textTheme.displayMedium,),
            Text(appController.myProffision,
              style:  TextStyle(
                fontSize: 34.0,
                color: appController.activeSecondaryTheme,
                fontWeight: FontWeight.bold
              )),
            Text(appController.myDescription,
              style: appController.activeThemeData.textTheme.displaySmall,),
            Container(
              padding: const EdgeInsets.all(10),
              width: screenSize(context).width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width:screenSize(context).width * 0.1 ,),
                  GithubContact(),
                  WhatsappContact(),
                  LinkedinContact(),

                  SizedBox(width:screenSize(context).width * 0.1 ,),
                ],
              ),
            ),
            DownloadCVButton(),
          ],
        );
      },
    ));
  }
}
