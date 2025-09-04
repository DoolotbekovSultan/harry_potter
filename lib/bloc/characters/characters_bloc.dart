import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:harry_potter/model/character/character.dart';
import 'package:meta/meta.dart';

part 'characters_event.dart';
part 'characters_state.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  CharactersBloc() : super(CharactersInitial()) {
    on<LoadCharacters>(_onLoadCharacters);
  }

  Future<void> _onLoadCharacters(
    LoadCharacters event,
    Emitter<CharactersState> emit,
  ) async {
    emit(CharactersLoading());
    final response = await Dio().get(
      "https://potterapi-fedeperin.vercel.app/en/characters",
    );
    final List<Character> characters = (response.data as List)
        .map((character) => Character.fromJson(character))
        .toList();
    emit(CharactersSuccess(characters));
  }
}
