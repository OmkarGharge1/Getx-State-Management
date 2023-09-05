import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx2Controller.dart';

class Example2Getx extends StatefulWidget {
  const Example2Getx({super.key});

  @override
  State<Example2Getx> createState() => _Example2GetxState();
}
// double opacity = .1;

Ex2Controller ctr = Get.put(Ex2Controller());

double op = ctr.opacity.value;

class _Example2GetxState extends State<Example2Getx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Example2'),),
      body: Column(
        children: [

          Obx(() => Container(
            height: 300,
            width: 300,
            color: Colors.amber.withOpacity(ctr.opacity.value),
          ),), 
          
          Obx(() =>Slider(value: ctr.opacity.value, onChanged: (value){
              ctr.setOpacity(value);
          }), )

          
        ],
      ),
    );
  }
}