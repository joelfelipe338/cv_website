
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/constantes.dart';
import '../apresentation/apresentation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              color: yellowNote
          ),
          width: size.width,
          height: size.height,
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


}
