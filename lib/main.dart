import 'package:flutter/material.dart';
import 'package:deliveryapp/page/login_page.dart';
import 'package:deliveryapp/page/home_page.dart';
import 'package:deliveryapp/page/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => const LoginPage(),
    HomePage.tag: (context) => const HomePage(),
    SignupPage.tag: (context) => const SignupPage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delivery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const LoginPage(),
      routes: routes,
    );
  }
}