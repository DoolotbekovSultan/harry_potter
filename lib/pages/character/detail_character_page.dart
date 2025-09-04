import 'package:flutter/material.dart';
import 'package:harry_potter/model/character/character.dart';

class DetailCharacterPage extends StatelessWidget {
  final Character character;
  const DetailCharacterPage({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Character Details')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(character.image, height: 300),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                character.fullName,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text('Nickname: ${character.nickname}'),
              const SizedBox(height: 4),
              Text('House: ${character.hogwartsHouse}'),
              const SizedBox(height: 4),
              Text('Birthdate: ${character.birthdate}'),
              const SizedBox(height: 4),
              Text('Interpreted by: ${character.interpretedBy}'),
              const SizedBox(height: 4),
              Text('Children: ${character.children.join(', ')}'),
            ],
          ),
        ),
      ),
    );
  }
}
