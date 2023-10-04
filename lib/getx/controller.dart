import 'package:get/get.dart';

class UserController extends GetxController {
  RxString username = " ".obs;
  
  String increase() {
    return username;
  }
}