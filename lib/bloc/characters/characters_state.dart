part of 'characters_bloc.dart';

sealed class CharactersState {}

final class CharactersInitial extends CharactersState {}

final class CharactersLoading extends CharactersState {}

final class CharactersSuccess extends CharactersState {
  final List<Character> characters;

  CharactersSuccess(this.characters);
}
