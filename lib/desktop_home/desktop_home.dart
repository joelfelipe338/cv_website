import 'package:flutter/material.dart';

import '../modules/apresentation/apresentation.dart';
import '../utils/constantes.dart';
import '../utils/theme.dart';
import '../utils/utils_functions.dart';

class DesktopHome extends StatefulWidget {
  const DesktopHome({Key? key}) : super(key: key);

  @override
  State<DesktopHome> createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: LightTheme.primatyTheme,
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Row(
                children: [
                  Expanded(child: Container(
                    child: Apresentation(),
                  ),),
                  Expanded(child: Container()),
                ],
              ),
              Container(
                height: screenSize(context).height * 0.7,
                width: double.infinity,

              )
          ],
        ));
  }
}
