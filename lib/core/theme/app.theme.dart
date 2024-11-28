import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: AppColors.primaryColor,
  primaryColorDark: AppColors.quaternaryColor,
  colorScheme: ThemeData().colorScheme.copyWith(
        secondary: AppColors.secondaryColor,
      ),
  fontFamily: 'Urbanist',
);
