// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Character _$CharacterFromJson(Map<String, dynamic> json) => Character(
  fullName: json['fullName'] as String,
  nickname: json['nickname'] as String,
  hogwartsHouse: json['hogwartsHouse'] as String,
  interpretedBy: json['interpretedBy'] as String,
  children: (json['children'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  image: json['image'] as String,
  birthdate: json['birthdate'] as String,
);

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
  'fullName': instance.fullName,
  'nickname': instance.nickname,
  'hogwartsHouse': instance.hogwartsHouse,
  'interpretedBy': instance.interpretedBy,
  'children': instance.children,
  'image': instance.image,
  'birthdate': instance.birthdate,
};
