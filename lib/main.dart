import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_apps_simple/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}