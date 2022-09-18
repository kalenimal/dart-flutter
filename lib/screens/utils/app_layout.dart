import 'package:get/get.dart';

import 'package:flutter/cupertino.dart';

class AppLayout{
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
  
  static getScreenHeight(){
    return Get.height;
  }
  static getScreenWidth(){
    return Get.width;
  }
}