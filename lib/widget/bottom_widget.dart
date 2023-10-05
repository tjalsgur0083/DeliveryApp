
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:deliveryapp/getx/user_controller.dart';

Widget bottomWidget() {
  Get.put(UserController());
  return Container(
    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
    child: Column(
      children: [
        //GetBuilder....
        Obx(() {
          return Text(
            '${Get.find<UserController>().username.value}',
            style: TextStyle(fontSize: 25),
          );
        } 
      ),  
      ],
    ),
  );
}