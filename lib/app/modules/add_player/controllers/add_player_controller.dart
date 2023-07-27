import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPlayerController extends GetxController {
  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController image;

  @override
  void onInit() {
    super.onInit();

    name = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    image = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();

    name.dispose();
    email.dispose();
    phone.dispose();
    image.dispose();
  }
}
