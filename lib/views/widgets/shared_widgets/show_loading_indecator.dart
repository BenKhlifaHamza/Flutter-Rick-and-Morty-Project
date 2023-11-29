import 'package:bloc_course/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

Widget showLoadingIndecator() {
  return const Center(
    child: CircularProgressIndicator(
      color: AppColors.primaryColor,
    ),
  );
}
