import 'package:bloc_course/core/app_constants/app_colors.dart';
import 'package:bloc_course/data/models/character_model.dart';
import 'package:flutter/material.dart';

SliverAppBar silverAppBar(CharacterModel characterModel) {
  return SliverAppBar(
    expandedHeight: 500,
    pinned: true,
    stretch: true,
    backgroundColor: AppColors.greyColor,
    flexibleSpace: FlexibleSpaceBar(
      background: Hero(
        tag: characterModel.id!,
        child: Image.network(
          characterModel.image!,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
      ),
      title: Text(
        characterModel.name!,
        style: const TextStyle(
            color: AppColors.whiteColor, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
