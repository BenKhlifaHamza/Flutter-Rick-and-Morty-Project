import 'package:bloc_course/data/models/character_model.dart';
import 'package:flutter/material.dart';

import 'character_item.dart';

Widget charactersList(List<CharacterModel> allCharacters) {
  return Container(
    color: const Color.fromRGBO(52, 58, 64, 1),
    child: GridView.builder(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1),
      itemCount: allCharacters.length,
      itemBuilder: (BuildContext context, int index) {
        return CharacterItem(
          characterModel: allCharacters[index],
        );
      },
    ),
  );
}
