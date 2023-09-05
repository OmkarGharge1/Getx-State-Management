import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/GetxImagePicker/imagePickerController.dart';

class imagePickerScreen extends StatefulWidget {
  const imagePickerScreen({super.key});

  @override
  State<imagePickerScreen> createState() => _imagePickerScreenState();
}

ImagePickerController controller = Get.put(ImagePickerController());

class _imagePickerScreenState extends State<imagePickerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const  Text('Image Picker'),),
      body: Obx(() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: controller.imagePath.isNotEmpty ? FileImage(File(controller.imagePath.toString())):null
            ),
          ),
          TextButton(onPressed: (){
            controller.getImage();
          }, child: const Text('Get the Image'))
        ],
      ),)
    );
  }
}