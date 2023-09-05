import 'package:get/get.dart';

class GetxListViewS extends GetxController{

  RxList<String> fruitList = ['Orange','Apple','Mango','Banana','Coconuts'].obs;
  RxList<dynamic> tempfruitList = [].obs;

  void addFruitList(String value){
     tempfruitList.add(value);
  }

  void removeFruitList(String value){
    tempfruitList.remove(value);
  }
}