import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:investify/app/modules/dashboard/view/dashboard_screen.dart';
import 'package:investify/app/widgets/app/app_logo.dart';
import 'package:investify/app/widgets/app/app_name.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Stack(
        children: [
          Center(child: AppLogo()),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(bottom: 100),
            child: AppName(),
          ),
        ],
      ),
    );
  }
}

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    splash();
  }

  void splash() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAll(DashboardScreen());
  }
}
