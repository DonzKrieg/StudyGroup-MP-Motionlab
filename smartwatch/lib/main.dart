import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smartwatch/controller/cart_controller.dart';
import 'package:smartwatch/pages/cart_page.dart';
import 'package:smartwatch/pages/homePage.dart';
import 'package:smartwatch/pages/login_page.dart';
import 'package:smartwatch/pages/product.dart';
import 'package:smartwatch/pages/register_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:smartwatch/pages/transaction_page.dart';

void main() {
  Get.put(CartController());
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
    await Future.delayed(const Duration(seconds: 2));
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
        '/cart': (context) => CartPage(),
        '/invoice': (context) => TransactionPage(),
      },
    );
  }
}
