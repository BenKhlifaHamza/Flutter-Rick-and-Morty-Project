import 'package:bloc_course/busnis_logic/cubit/characters_cubit.dart';
import 'package:bloc_course/busnis_logic/cubit/quote_cubit.dart';
import 'package:bloc_course/data/crud/characters_api.dart';
import 'package:bloc_course/data/crud/quote_api.dart';
import 'package:bloc_course/data/models/character_model.dart';
import 'package:bloc_course/data/repository/characters_repository.dart';
import 'package:bloc_course/data/repository/quote_repository.dart';
import 'package:bloc_course/views/screens/characters_details_screen.dart';
import 'package:bloc_course/views/screens/characters_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'routes_names.dart';

class AppRoutes {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;

  AppRoutes() {
    charactersRepository = CharactersRepository(CharactersApi());
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.charactersPage:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => charactersCubit,
            child: const CharactersScreen(),
          ),
        );
      case RoutesNames.characterDetailsPage:
        final characterModel = settings.arguments as CharacterModel;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => QuoteCubit(QuoteRepository(QuoteApi())),
            child: CharactersDetailsScreen(characterModel: characterModel),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const CharactersScreen(),
        );
    }
  }
}
