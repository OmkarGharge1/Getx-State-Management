import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/Getx_StateMangement/Example1/getcController.dart';

class GetxCounter extends StatefulWidget {
  const GetxCounter({super.key});


  @override
  State<GetxCounter> createState() => _GetxCounterState();
}
 final CounterController controller = Get.put(CounterController());

class _GetxCounterState extends State<GetxCounter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        controller.incrementCounter();
      }, child: const Icon(Icons.add),),
      appBar: AppBar(
        title: const Text('GetxCounter'),
      ),
      body:Obx(() =>  Center(
        child: Text(
         'Counter ${controller.counter}',
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    ),);
  }
}
