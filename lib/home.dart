import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.snackbar('Mr Omkar' , 'Welcome to Getx App', snackPosition: SnackPosition.BOTTOM);
      } ,child: Icon(Icons.abc),),
      appBar: AppBar(title:const  Text("Getx App")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Center(child: ElevatedButton(onPressed: (){
          Get.toNamed('/screenOne');
          Get.size;
         }, child: const Text('Click Me')))
        ]
        ),
    );
  }
}