import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ShowHideController extends GetxController {
  RxBool isHide = true.obs;
  buttonController() {
    isHide.value = !isHide.value;
  }

  final nameController = TextEditingController();
  final numberContainer = TextEditingController();

  Uint8List? image;
  File? selectedImage;
  Future pickImageFormGallery(context) async {
    final returnImage = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (returnImage == null) return;

    selectedImage = File(returnImage.path);
    image = File(returnImage.path).readAsBytesSync();
    update();
    Navigator.of(context).pop();
  }

  Future pickImageFormCamera(context) async {
    final returnImage = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
    if (returnImage == null) return;

    selectedImage = File(returnImage.path);
    image = File(returnImage.path).readAsBytesSync();
    update();
    Navigator.of(context).pop();
  }
}
