import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_assignment/features/get_list_photos/page/get_list_photos_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: GetListPhotosScreen(),
    );
  }
}
