
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final Color _primaryBackgroundColor =  const Color(0xff191923);
  final Color _secundaryBackgroundColor = const Color(0xff54595f);
  final Color _themeColor = Colors.green;
  final Map<String,Color> _colorLinks = {
    'email': Colors.grey,
    'github': Colors.grey,
    'linkedin': Colors.grey,
    'whatsapp' : Colors.grey,
  };


  @override
  Widget build(BuildContext context) {
    final double widthScreenSize = MediaQuery.of(context).size.width;
    final double heightScreenSize = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/space.gif"),
            fit: BoxFit.cover
          )
        ),
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Card(
            // shape: Border.all(width: 6, color:Colors.white12 ),
            elevation: 6,
            color: _primaryBackgroundColor,
            child: Row(
              children: [
                _sideBar(),
                _body()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _body(){
    return Expanded(
      flex: 4,
      child: Container(
        margin: const EdgeInsets.all(10),
        height: double.infinity,
        color: _secundaryBackgroundColor,
      ),
    );
  }

  Widget _sideBar(){
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.all(10),
        height: double.infinity,
        color:_primaryBackgroundColor,
        child: Column(
          children: [
            _myPersonalInfo(),
            _contact(),
          ],
        ),
      ),
    );
  }

  Widget _contact(){
    return Padding(padding: EdgeInsets.all(10),
    child: Column(
      children: [
        _contactItem(contactType: "Whatsapp", contact: "(84) 98602-8006", colorFlag: 'whatsapp',
        onClick:(){
          _launchInBrowser(Uri.parse('https://api.whatsapp.com/send?phone=5584986028006'));
        }, ),
        _contactItem(contactType: "E-mail", contact: "joelfelipe338@gmail.com",colorFlag: 'email',
        onClick: () async {
          final Uri emailLaunchUri = Uri(
            scheme: 'mailto',
            path: 'joelfelipe338@gmail.com',
          );
          if (!await launchUrl(
              emailLaunchUri,
          webOnlyWindowName: "_blank"
          )) {
          throw Exception('Could not launch email');
          }
        }),
        _contactItem(contactType: "Linkedin", contact: "https://www.linkedin.com/in/joelfelipe338", colorFlag:'linkedin'),
        _contactItem(contactType: "Github", contact: "https://github.com/joelfelipe338", colorFlag: 'github'),
      ],
    ),);
  }

  Widget _contactItem({required String contactType ,required String contact, required String colorFlag, Function()? onClick}){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$contactType:", style: TextStyle(color: _themeColor, fontWeight: FontWeight.bold, fontSize: 12),),
          InkWell(
            onTap: onClick != null ? onClick : () => _launchInBrowser(Uri.parse(contact)),
            onHover: (value){
              setState((){
                _colorLinks[colorFlag] = value ? Colors.lightGreen : Colors.grey;
              });
            },
              child: Text(contact, style: TextStyle(color: _colorLinks[colorFlag], fontWeight: FontWeight.bold, fontSize: 12),)),
        ],
      ),
    );
  }

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

  Widget _myPersonalInfo(){
    return Container(
      height: 200,
      width: double.infinity,
      color: _secundaryBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('images/space.jpg'),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Joel Felipe",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
          ),
          Text("Desenvolvedor Flutter",
            style: TextStyle(color: Colors.grey,fontSize: 14),)
        ],
      ),
    );
  }

  Future<void> _launchInBrowser(Uri url) async {
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

}
