import 'package:bloc_course/core/app_constants/app_colors.dart';
import 'package:bloc_course/core/app_constants/app_images.dart';
import 'package:bloc_course/core/routes/routes_names.dart';
import 'package:bloc_course/data/models/character_model.dart';
import 'package:flutter/material.dart';

class CharacterItem extends StatelessWidget {
  final CharacterModel characterModel;
  const CharacterItem({super.key, required this.characterModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesNames.characterDetailsPage,
            arguments: characterModel);
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
        padding: const EdgeInsetsDirectional.all(4),
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(8)),
        child: GridTile(
          footer: Container(
            decoration: const BoxDecoration(
                color: AppColors.blackColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              characterModel.name!,
              style: const TextStyle(
                height: 1.3,
                fontSize: 16,
                color: AppColors.whiteColor,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.center,
            ),
          ),
          child: Hero(
            tag: characterModel.id!,
            child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: characterModel.image!.isNotEmpty
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: FadeInImage.assetNetwork(
                          placeholder: AppImages.loading,
                          image: characterModel.image!,
                          fit: BoxFit.cover,
                        ),
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          AppImages.notFound,
                          height: 50,
                          width: 50,
                        ),
                      )),
          ),
        ),
      ),
    );
  }
}
