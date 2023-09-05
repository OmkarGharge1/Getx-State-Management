import 'package:get/get.dart';

class Ex2Controller extends GetxController{

  RxDouble opacity = .1.obs;


  void setOpacity(double val){
     opacity.value = val;
  }
}