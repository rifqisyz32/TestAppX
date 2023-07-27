import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../app/routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
            OutlinedButton(
              onPressed: () => Get.toNamed(Routes.PLAYER),
              child: Text("Player Page"),
            ),
          ],
        ),
      ),
    );
  }
}
