import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:investify/app/care/theme/themes.dart';
import 'package:investify/app/widgets/splash/splash.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      home: Splash(),
    ),
  );
}
