part of 'characters_bloc.dart';

@immutable
sealed class CharactersEvent {}

class LoadCharacters extends CharactersEvent {}
