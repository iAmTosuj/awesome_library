// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_book_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyBookResponse _$MyBookResponseFromJson(Map<String, dynamic> json) =>
    MyBookResponse(
      json['id'] as int,
      json['title'] as String,
      MainBooksSection.fromJson(json['section'] as Map<String, dynamic>),
      (json['authors'] as List<dynamic>)
          .map((e) => MainBooksAuthor.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['cover'] as String,
      json['is_available'] as bool,
      json['status'] as String,
      json['dt_return'] as String,
    );

Map<String, dynamic> _$MyBookResponseToJson(MyBookResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'section': instance.section,
      'authors': instance.authors,
      'cover': instance.cover,
      'is_available': instance.isAvailable,
      'status': instance.status,
      'dt_return': instance.dtReturn,
    };
