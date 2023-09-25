import 'package:flutter/material.dart';
import 'package:flutter_app_icons/flutter_app_icons.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import '../../../../controllers/app_controller.dart';
import '../../../../utils/utils_functions.dart';

class DownloadCVButton extends StatefulWidget {
  const DownloadCVButton({Key? key}) : super(key: key);

  @override
  State<DownloadCVButton> createState() => _DownloadCVButtonState();
}

class _DownloadCVButtonState extends State<DownloadCVButton> {

  final appController = GetIt.I.get<AppController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        launchInBrowser(Uri.parse('https://drive.google.com/file/d/1mE0p8YLSvKrguWZZA0dvPzJYplbw2Fl0/view?usp=sharing'));
      },
      child: Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: appController.activeSecondaryTheme,width: 5),
            color: Colors.transparent
        ),
        child: Center(child: Text("Download CV",
          style: TextStyle(
            fontFamily: appController.activeFontFamily,
              fontWeight: FontWeight.bold, fontSize: 25, color: appController.activeSecondaryTheme),
        )),
      ),
    );
  }

}
