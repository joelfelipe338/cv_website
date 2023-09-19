import 'package:cv_website/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'controllers/app_controller.dart';
import 'modules/home/home.dart';


void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton<AppController>(AppController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CODEXP',
      home: HomePage(),
    );
  }
}

