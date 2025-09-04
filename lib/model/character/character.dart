import 'package:json_annotation/json_annotation.dart';

part 'character.g.dart';

@JsonSerializable()
class Character {
  final String fullName;
  final String nickname;
  final String hogwartsHouse;
  final String interpretedBy;
  final List<String> children;
  final String image;
  final String birthdate;

  const Character({
    required this.fullName,
    required this.nickname,
    required this.hogwartsHouse,
    required this.interpretedBy,
    required this.children,
    required this.image,
    required this.birthdate,
  });

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterToJson(this);
}

/*
Example JSON data:
    {
        "fullName": "Harry James Potter",
        "nickname": "Harry",
        "hogwartsHouse": "Gryffindor",
        "interpretedBy": "Daniel Radcliffe",
        "children": [
            "James Sirius Potter",
            "Albus Severus Potter",
            "Lily Luna Potter"
        ],
        "image": "https://raw.githubusercontent.com/fedeperin/potterapi/main/public/images/characters/harry_potter.png",
        "birthdate": "Jul 31, 1980",
        "index": 0
    },
*/
