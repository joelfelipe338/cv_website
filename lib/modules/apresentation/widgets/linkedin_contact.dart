import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../utils/utils_functions.dart';
import 'item_contact.dart';

class LinkedinContact extends StatefulWidget {
  const LinkedinContact({Key? key}) : super(key: key);

  @override
  State<LinkedinContact> createState() => _LinkedinContactState();
}

class _LinkedinContactState extends State<LinkedinContact> {
  @override
  Widget build(BuildContext context) {
    return ItemContact(icon: MdiIcons.linkedin,onClick: (){
      launchInBrowser(Uri.parse('https://www.linkedin.com/in/joelfelipe338'));
    },);
  }
}
