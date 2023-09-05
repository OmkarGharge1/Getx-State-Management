import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ScreenTwo extends StatefulWidget {

  const ScreenTwo({super.key,});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title:const  Text('Screen Two',style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.black,),
      body:Column(  
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(onPressed: (){
              // Get.to(const ScreenOne());
              Get.offAllNamed('/screenOne');
            }, child:const  Text("Screen Two")),
          )
        ],
      )
    );
  }
}