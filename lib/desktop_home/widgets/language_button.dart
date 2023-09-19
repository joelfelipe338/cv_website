import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../controllers/app_controller.dart';
import '../controllers/controller.dart';

class LanguageButton extends StatelessWidget {
  LanguageButton({Key? key}) : super(key: key);

  final appController = GetIt.I.get<AppController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: changeLanguage,
      child: Container(
        width: 30,
        height: 30,
        decoration: const BoxDecoration(shape: BoxShape.circle),
        child: Center(
          child: Text(getInactiveLanguage(appController.activeLanguage), style: TextStyle(
              fontFamily: appController.activeFontFamily,
              color: appController.activeSecondaryTheme,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}
