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