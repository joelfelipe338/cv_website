import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

String cleanText(String str) {

  var withDia = 'ÀÁÂÃÄÅàáâãäåÒÓÔÕÕÖØòóôõöøÈÉÊËèéêëðÇçÐÌÍÎÏìíîïÙÚÛÜùúûüÑñŠšŸÿýŽž';
  var withoutDia = 'AAAAAAaaaaaaOOOOOOOooooooEEEEeeeeeCcDIIIIiiiiUUUUuuuuNnSsYyyZz';

  for (int i = 0; i < withDia.length; i++) {
    str = str.replaceAll(withDia[i], withoutDia[i]);
  }

  var result = str.toLowerCase().replaceAll(new RegExp('\W+'),'').replaceAll('-', '').replaceAll(' ', '').replaceAll('(', '').replaceAll(')', '').trim();
  print(result);
  return result;
}

Future<void> launchInBrowser(Uri url) async {
  if (await canLaunchUrl(
    url,
  )) {
    await launchUrl(
        url,
        webOnlyWindowName: "_blank"
    );
  }else{
    throw Exception('Could not launch $url');

  }
}

bool isMobileScreen(BuildContext context) {
  return MediaQuery.of(context).size.width < 800;
}

bool isTabScreen(BuildContext context) {
  return MediaQuery.of(context).size.width > 800 &&
  MediaQuery.of(context).size.width < 1200;
}

bool isDesktopScreen(BuildContext context) {
  return MediaQuery.of(context).size.width >= 1200;
}

Size screenSize(BuildContext context){
  return MediaQuery.of(context).size;
}