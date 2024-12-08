import 'package:flutter/material.dart';
import 'package:smartwatch/pages/homePage.dart';
import 'package:smartwatch/pages/login_page.dart';
import 'package:smartwatch/pages/product.dart';
import 'package:smartwatch/pages/register_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    print('pausing...');
    await Future.delayed(Duration(seconds: 2));
    print('unpausing...');
    FlutterNativeSplash.remove();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => HomePage(),
        '/product': (context) => Product(),
      },
    );
  }
}
