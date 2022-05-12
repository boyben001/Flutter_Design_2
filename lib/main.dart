import 'package:flutter/material.dart';
import 'package:flutter_design_2/home_page.dart';
import 'package:flutter_design_2/video_info.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: VideoInfo(),
    );
  }
}
