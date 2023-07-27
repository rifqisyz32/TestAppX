import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:testappx/firebase_options.dart';
import 'package:get/get.dart';

import 'app/data/themeData.dart';
import 'app/routes/app_pages.dart';

void main() {
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(
    const TestApp(),
  );
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      themeMode: ThemeMode.system,
      theme: terang,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
