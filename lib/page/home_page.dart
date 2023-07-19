import 'package:flutter/material.dart';
import 'package:deliveryapp/widget/hearder_widget.dart';
import 'package:deliveryapp/widget/body_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String tag = 'home-page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          hearderWidget(),
          bodyWidget(),
        ],
      ),
    );
  }
} 