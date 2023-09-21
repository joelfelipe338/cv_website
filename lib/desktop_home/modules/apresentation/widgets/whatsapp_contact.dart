import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../utils/utils_functions.dart';
import 'item_contact.dart';

class WhatsappContact extends StatefulWidget {
  const WhatsappContact({Key? key}) : super(key: key);

  @override
  State<WhatsappContact> createState() => _WhatsappContactState();
}

class _WhatsappContactState extends State<WhatsappContact> {
  @override
  Widget build(BuildContext context) {
    return ItemContact(icon: MdiIcons.whatsapp,onClick: (){
      launchInBrowser(Uri.parse('https://api.whatsapp.com/send?phone=5584986028006'));
    },);
  }
}
