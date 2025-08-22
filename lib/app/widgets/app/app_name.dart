import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:investify/app/care/constants/color_res.dart';

class AppName extends StatelessWidget {
  const AppName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Investify",
      style: GoogleFonts.ubuntu(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Get.isDarkMode ? AppColors.white : AppColors.black,
      ),
    );
  }
}
