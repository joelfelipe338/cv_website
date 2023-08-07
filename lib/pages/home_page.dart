import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final Color _primaryBackgroundColor =  const Color(0xff191923);
  final Color _secundaryBackgroundColor = const Color(0xff54595f);

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
            shape: Border.all(width: 6, color:Colors.white12 ),
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
        color: Colors.orange,
      ),
    );
  }

  Widget _sideBar(){
    return Expanded(
      flex: 1,
      child: Container(
        height: double.infinity,
        color: Colors.red,
        child: Column(
          children: [
            _myInfo(),
          ],
        ),
      ),
    );
  }

  Widget _myInfo(){
    return Container(
      height: 260,
      width: double.infinity,
      color: _secundaryBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('images/space.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text("Joel Felipe",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),),
          ),
          Text("Desenvolvedor Flutter",
          style: TextStyle(color: Colors.grey,fontSize: 18),)
        ],
      ),
    );
  }
}
