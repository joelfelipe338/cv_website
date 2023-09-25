import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../controllers/app_controller.dart';
import '../../utils/theme.dart';
import '../controllers/controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ThemeButtonMobile extends StatelessWidget {
  ThemeButtonMobile({Key? key}) : super(key: key);

  final appController = GetIt.I.get<AppController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return IconButton(icon:appController.activeLightTheme ?
        Icon(Icons.dark_mode, color: LightTheme.secondaryTheme,size: 20,)
            : Icon(Icons.light_mode, color: DarkTheme.secondaryTheme,size: 20),
          onPressed: changeTheme,);
      },
    );
  }
}
