import 'package:flutter/material.dart';
import 'package:harry_potter/model/character/character.dart';

class ItemCharacter extends StatelessWidget {
  final Character character;

  const ItemCharacter({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/character', arguments: character);
      },
      child: Card(
        margin: const EdgeInsets.all(8),
        elevation: 4,
        child: Row(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
                child: Image.network(character.image, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      character.fullName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text('Nickname: ${character.nickname}'),
                    const SizedBox(height: 4),
                    Text('House: ${character.hogwartsHouse}'),
                    const SizedBox(height: 4),
                    Text('Birthdate: ${character.birthdate}'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
