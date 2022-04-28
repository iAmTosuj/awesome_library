// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_books_author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainBooksAuthor _$MainBooksAuthorFromJson(Map<String, dynamic> json) =>
    MainBooksAuthor(
      json['id'] as int,
      json['forename'] as String,
      json['surname'] as String,
      json['patronymic'] as String,
    );

Map<String, dynamic> _$MainBooksAuthorToJson(MainBooksAuthor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'forename': instance.forename,
      'surname': instance.surname,
      'patronymic': instance.patronymic,
    };
