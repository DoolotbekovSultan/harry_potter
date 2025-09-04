// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Book _$BookFromJson(Map<String, dynamic> json) => Book(
  number: (json['number'] as num).toInt(),
  title: json['title'] as String,
  originalTitle: json['originalTitle'] as String,
  releaseDate: json['releaseDate'] as String,
  description: json['description'] as String,
  pages: (json['pages'] as num).toInt(),
  cover: json['cover'] as String,
  index: (json['index'] as num).toInt(),
);

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
  'number': instance.number,
  'title': instance.title,
  'originalTitle': instance.originalTitle,
  'releaseDate': instance.releaseDate,
  'description': instance.description,
  'pages': instance.pages,
  'cover': instance.cover,
  'index': instance.index,
};
