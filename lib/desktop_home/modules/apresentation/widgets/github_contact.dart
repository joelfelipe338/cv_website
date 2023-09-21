import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../utils/utils_functions.dart';
import 'item_contact.dart';

class GithubContact extends StatefulWidget {
  const GithubContact({Key? key}) : super(key: key);

  @override
  State<GithubContact> createState() => _GithubContactState();
}

class _GithubContactState extends State<GithubContact> {
  @override
  Widget build(BuildContext context) {
    return ItemContact(icon: MdiIcons.github,onClick: (){
      launchInBrowser(Uri.parse('https://github.com/joelfelipe338'));
    },);
  }
}
