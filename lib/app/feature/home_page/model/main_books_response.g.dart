// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_books_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainBooksResponse _$MainBooksResponseFromJson(Map<String, dynamic> json) =>
    MainBooksResponse(
      json['id'] as int,
      json['title'] as String,
      MainBooksSection.fromJson(json['section'] as Map<String, dynamic>),
      (json['authors'] as List<dynamic>)
          .map((e) => MainBooksAuthor.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['cover'] as String,
      json['is_available'] as bool,
    );

Map<String, dynamic> _$MainBooksResponseToJson(MainBooksResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'section': instance.section,
      'authors': instance.authors,
      'cover': instance.cover,
      'is_available': instance.isAvailable,
    };
