import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/GetxListView/GetxListviewController.dart';

class GetxListView extends StatefulWidget {
  const GetxListView({super.key});

  @override
  State<GetxListView> createState() => _GetxListViewState();
}
GetxListViewS controller = Get.put(GetxListViewS());
// List<String> fruitList = ['Orange','Apple','Mango','Banana','Coconuts'];
// List<String> tempfruitList = [];
class _GetxListViewState extends State<GetxListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const  Text('GetX ListView') ),
      body: ListView.builder(
        itemCount:controller.fruitList.length,
        itemBuilder: (context,index){
        return Card(
          child: ListTile(
            onTap: (){
              if(controller.tempfruitList.contains(controller.fruitList[index].toString())){
                controller.removeFruitList(controller.fruitList[index].toString());
              //  print(tempfruitList.toString());
              }else{
                // tempfruitList.add(fruitList[index].toString());
              controller.addFruitList(controller.fruitList[index].toString());
                // print(tempfruitList.toString());
              }
            },
            title:  Text(controller.fruitList[index].toString()),
            trailing:  Obx(() => Icon(Icons.favorite,color:controller. tempfruitList.contains( controller.fruitList[index].toString()) ? Colors.red : Colors.white),) 
          ),
        );
      }),
    );
  }
}