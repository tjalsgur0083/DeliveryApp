import 'package:get/get.dart';

class UserController extends GetxController {
  RxString username = "this is getx test".obs;   //서버에서 사용자 아름을 받는 부분(하느중)
  
  RxString increase() {
    return username;   //서버에서 사용자 이름을 받아 출력
  }
}