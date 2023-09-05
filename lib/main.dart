import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/GetxImagePicker/imagepicker.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const imagePickerScreen(),
      // Getx Routing 
      // getPages: [
      //   GetPage(name: '/', page: ()=> const Home()),
      //   GetPage(name: '/screenOne', page: ()=> const ScreenOne(name: "Omkar Gharge",)),
      //   GetPage(name: '/screenTwo', page: ()=> const ScreenTwo()),
        
      // ],
    );
    
  }
}

