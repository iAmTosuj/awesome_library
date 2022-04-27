// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookDetailResponse _$BookDetailResponseFromJson(Map<String, dynamic> json) =>
    BookDetailResponse(
      json['id'] as int,
      json['title'] as String,
      MainBooksSection.fromJson(json['section'] as Map<String, dynamic>),
      (json['authors'] as List<dynamic>)
          .map((e) => MainBooksAuthor.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['cover'] as String,
      json['is_available'] as bool,
      json['edition'] as int,
      json['publication_year'] as int,
    );

Map<String, dynamic> _$BookDetailResponseToJson(BookDetailResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'section': instance.section,
      'authors': instance.authors,
      'cover': instance.cover,
      'is_available': instance.isAvailable,
      'edition': instance.edition,
      'publication_year': instance.publicationYear,
    };
