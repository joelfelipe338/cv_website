import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../controllers/app_controller.dart';
import '../controllers/controller.dart';

class LanguageButtonMobile extends StatelessWidget {
  LanguageButtonMobile({Key? key}) : super(key: key);

  final appController = GetIt.I.get<AppController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: changeLanguage,
      child: Observer(
        builder: (context) {
          return Container(
            width: 20,
            height: 20,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Center(
              child: Text(getInactiveLanguage(appController.activeLanguage), style: TextStyle(
                  fontFamily: appController.activeFontFamily,
                  color: appController.activeSecondaryTheme,
                  fontSize: 14,
                  fontWeight: FontWeight.bold
              ),),
            ),
          );
        },
      ),
    );
  }
}
