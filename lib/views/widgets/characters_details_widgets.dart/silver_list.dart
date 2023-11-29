import 'package:bloc_course/core/functions/cut_episode_number.dart';
import 'package:bloc_course/data/models/character_model.dart';
import 'package:bloc_course/views/widgets/characters_details_widgets.dart/random_quotes.dart';
import 'package:bloc_course/views/widgets/characters_details_widgets.dart/row_character_info.dart';
import 'package:flutter/material.dart';

Widget silverList(CharacterModel characterModel, double screenHeight) {
  return SliverList(
      delegate: SliverChildListDelegate(
    [
      Container(
        height: screenHeight - 80,
        margin: const EdgeInsets.fromLTRB(14, 14, 14, 0),
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            rowCharacterInfo("Status", characterModel.status!),
            rowCharacterInfo("Gender", characterModel.gender!),
            rowCharacterInfo("Species", characterModel.species!),
            rowCharacterInfo("Location", characterModel.location!.name!),
            rowCharacterInfo("Created", characterModel.created!),
            rowCharacterInfo("Episodes",
                cutEpisodeNumber(characterModel.episode!).join(" / ")),
            RandomQuotes()
          ],
        ),
      )
    ],
  ));
}
