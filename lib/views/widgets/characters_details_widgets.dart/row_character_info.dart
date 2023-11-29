import 'package:bloc_course/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

Widget rowCharacterInfo(String title, String data) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 0, 10, 15),
    child: RichText(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(children: [
        TextSpan(
            text: title,
            style: const TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: AppColors.primaryColor,
                decorationThickness: 2,
                fontSize: 18,
                color: AppColors.whiteColor,
                fontWeight: FontWeight.bold)),
        TextSpan(
            text: " : $data",
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.whiteColor,
            ))
      ]),
    ),
  );
}
