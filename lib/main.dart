import 'package:cv_website/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'modules/home/home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  //  Fonts:
  //  'PatrickHand',
  //  'Handlee',
  //  'QuickSand',
  //  'Shadow'

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CODEXP',
      theme: LightTheme.themeData,
      home: const HomePage(),
    );
  }
}

