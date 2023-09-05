import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  final String? name;
  const ScreenOne({super.key, this.name});
  
  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(title:  Text('Screen One ${widget.name}',style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.amber,
      ),
      body:Column(  
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          Center(
            child: TextButton(onPressed: (){
              // Get.to(const ScreenTwo());
              Get.toNamed('/screenTwo',);
            }, child:const  Text("Screen One")),
          )
        ],
      )
    );
  }
}