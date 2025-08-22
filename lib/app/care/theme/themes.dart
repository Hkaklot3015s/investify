import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:investify/app/care/constants/color_res.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.scaffold,
  primaryColor: AppColors.primary,
  cardColor: AppColors.card,
  dividerColor: AppColors.divider,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.appBar,
    iconTheme: IconThemeData(color: AppColors.icon),
    titleTextStyle: GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.textPrimary,
    ),
  ),
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.poppins(color: AppColors.textPrimary),
    bodyMedium: GoogleFonts.poppins(color: AppColors.textSecondary),
  ),
  iconTheme: IconThemeData(color: AppColors.icon),
  colorScheme: ColorScheme.light(
    primary: AppColors.primary,
    secondary: AppColors.accent,
    error: AppColors.error,
    background: AppColors.background,
  ),
);

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.darkScaffold,
  primaryColor: AppColors.darkPrimary,
  cardColor: AppColors.darkCard,
  dividerColor: AppColors.darkDivider,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.darkAppBar,
    iconTheme: IconThemeData(color: AppColors.darkIcon),
    titleTextStyle: GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.darkTextPrimary,
    ),
  ),
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.poppins(color: AppColors.darkTextPrimary),
    bodyMedium: GoogleFonts.poppins(color: AppColors.darkTextSecondary),
  ),
  iconTheme: IconThemeData(color: AppColors.darkIcon),
  colorScheme: ColorScheme.dark(
    primary: AppColors.darkPrimary,
    secondary: AppColors.darkAccent,
    error: AppColors.error,
    background: AppColors.darkBackground,
  ),
);
