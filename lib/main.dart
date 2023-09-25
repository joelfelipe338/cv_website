import 'package:cv_website/mobile_home/mobile_home.dart';
import 'package:cv_website/tablet_home/home.dart';
import 'package:cv_website/utils/theme.dart';
import 'package:cv_website/utils/utils_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'controllers/app_controller.dart';
import 'desktop_home/home.dart';


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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late ScrollController _scrollController;
  bool _showBackToTopButton = false;
  bool lightTheme = true;
  final appController = GetIt.I.get<AppController>();

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(
            () {
          setState(
                () {
              if (_scrollController.offset >= 300) {
                _showBackToTopButton = true;
              } else {
                _showBackToTopButton = false;
              }
            },
          );
        },
      );

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(milliseconds: 1000), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {

    return Observer(
      builder: (_) {
        return Scaffold(
          // appBar: isMobileScreen(context) ?  AppBar() : null,
          // drawer: isMobileScreen(context) ? Drawer() : null,
          backgroundColor: appController.activePrimaryTheme,
          body: SingleChildScrollView(
            controller: _scrollController,
            physics: const ClampingScrollPhysics(),
            // child: DesktopHome(),
            child: isDesktopScreen(context)
                ? DesktopHome()
                : isTabScreen(context) ? TabletHome() : MobileHome(),
          ),
          floatingActionButton: _showBackToTopButton == false
              ? null
              : FloatingActionButton(
            onPressed: _scrollToTop,
            tooltip: 'Go to top',
            backgroundColor: LightTheme.primaryTheme,
            foregroundColor: Colors.black,
            child: const Icon(
              Icons.arrow_upward_rounded,
            ),
          ),
        );
      },
    );
  }


}


