import 'package:bloc/bloc.dart';
import 'package:bloc_course/data/models/character_model.dart';
import 'package:bloc_course/data/repository/characters_repository.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;

  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  void getAllCharacters() {
    charactersRepository
        .getAllCharacters()
        .then((characters) => emit(CharactersLoaded(characters)));
  }
}
