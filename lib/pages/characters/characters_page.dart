import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter/bloc/characters/characters_bloc.dart';
import 'package:harry_potter/pages/characters/item_character.dart';

class CharactersPage extends StatefulWidget {
  const CharactersPage({super.key});

  @override
  State<CharactersPage> createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (_) => CharactersBloc()..add(LoadCharacters()),
          child: BlocBuilder<CharactersBloc, CharactersState>(
            builder: (context, state) {
              switch (state) {
                case CharactersLoading():
                  return Center(child: CircularProgressIndicator());
                case CharactersSuccess(:final characters):
                  return ListView.builder(
                    itemCount: characters.length,
                    itemBuilder: (context, index) =>
                        ItemCharacter(character: characters[index]),
                  );
                default:
                  return const SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}
