import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:deliveryapp/getx/user_controller.dart';

Widget bottomWidget() {
  final userController = Get.put(UserController());

  return Container(
    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
    child: Column(
      children: [
        Obx(() {
          return Text(
            '${userController.username.value}',
            style: const TextStyle(fontSize: 25),
          );
        } 
      ),  
      ],
    ),
  );
}