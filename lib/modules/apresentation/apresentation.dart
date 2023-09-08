import 'package:cv_website/modules/apresentation/widgets/download_cv_button.dart';
import 'package:cv_website/modules/apresentation/widgets/github_contact.dart';
import 'package:cv_website/modules/apresentation/widgets/linkedin_contact.dart';
import 'package:cv_website/modules/apresentation/widgets/whatsapp_contact.dart';
import 'package:flutter/material.dart';

class Apresentation extends StatefulWidget {
  const Apresentation({Key? key}) : super(key: key);

  @override
  State<Apresentation> createState() => _ApresentationState();
}

class _ApresentationState extends State<Apresentation> {




  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Olá, meu nome é Joel Felipe",
          style: TextStyle(fontSize: 30,),),
        const Text("Sou Desenvolvedor Mobile",
          style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),),
        const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod arcu id massa iaculis, a tincidunt nisi iaculis. Nulla facilisi. Duis in ullamcorper leo. Maecenas nec justo vel elit suscipit tristique. Vestibulum dapibus, ligula id tristique facilisis, tortor neque pharetra odio, ut dignissim felis risus ac neque. Proin a vehicula lectus, ac bibendum ipsum. Aenean non purus ac elit venenatis dignissim",
          style: TextStyle(fontSize: 20),),
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
    ));
  }
}
