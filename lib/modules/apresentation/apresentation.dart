import 'package:cv_website/modules/apresentation/widgets/download_cv_button.dart';
import 'package:cv_website/modules/apresentation/widgets/github_contact.dart';
import 'package:cv_website/modules/apresentation/widgets/linkedin_contact.dart';
import 'package:cv_website/modules/apresentation/widgets/whatsapp_contact.dart';
import 'package:cv_website/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../controllers/app_controller.dart';


class Apresentation extends StatefulWidget {
  const Apresentation({Key? key}) : super(key: key);

  @override
  State<Apresentation> createState() => _ApresentationState();
}

class _ApresentationState extends State<Apresentation> {

  final appController = GetIt.I.get<AppController>();

  @override
  Widget build(BuildContext context) {
    return Center(child: Observer(
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(appController.activeLanguage == 'PT'
                ? "Olá, meu nome é Joel Felipe"
                : "Hi, my name is Joel Felipe",
              style: appController.activeThemeData.textTheme.displayMedium,),
            Text(appController.activeLanguage == 'PT'
                ? "Sou Desenvolvedor Mobile"
                : "I am a Mobile Developer",
              style:  appController.activeThemeData.textTheme.displayLarge,),
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod arcu id massa iaculis, a tincidunt nisi iaculis. Nulla facilisi. Duis in ullamcorper leo. Maecenas nec justo vel elit suscipit tristique. Vestibulum dapibus, ligula id tristique facilisis, tortor neque pharetra odio, ut dignissim felis risus ac neque. Proin a vehicula lectus, ac bibendum ipsum. Aenean non purus ac elit venenatis dignissim",
              style: appController.activeThemeData.textTheme.displaySmall,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: 450,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GithubContact(),
                  WhatsappContact(),
                  LinkedinContact(),
                  DownloadCVButton(),
                ],
              ),
            )
          ],
        );
      },
    ));
  }
}
