
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../apresentation/apresentation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color _yellowNote = const Color(0xffffee99);
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              color: _yellowNote
          ),
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                Expanded(child: Row(
                  children: [
                    Expanded(child: Container(
                      height: double.infinity,
                      child: Apresentation(),
                    ),),
                    Expanded(child: Container()),
                  ],
                ),),
                Container(
                  height: size.height * 0.5,
                  width: double.infinity,
                )
              ],
            ),
          )
      ),
    );
  }

  /*Widget _contact(){
    return Padding(padding: EdgeInsets.all(10),
    child: Column(
      children: [
        _contactItem(contactType: "Whatsapp", contact: "(84) 98602-8006", colorFlag: 'whatsapp',
        onClick:(){
          _launchInBrowser(Uri.parse('https://api.whatsapp.com/send?phone=5584986028006'));
        }, ),
        _contactItem(contactType: "E-mail", contact: "joelfelipe338@gmail.com",colorFlag: 'email',
        onClick: () async {
          final Uri emailLaunchUri = Uri(
            scheme: 'mailto',
            path: 'joelfelipe338@gmail.com',
          );
          if (!await launchUrl(
              emailLaunchUri,
          webOnlyWindowName: "_blank"
          )) {
          throw Exception('Could not launch email');
          }
        }),
        _contactItem(contactType: "Linkedin", contact: "https://www.linkedin.com/in/joelfelipe338", colorFlag:'linkedin'),
        _contactItem(contactType: "Github", contact: "https://github.com/joelfelipe338", colorFlag: 'github'),
      ],
    ),);
  }*/

}
