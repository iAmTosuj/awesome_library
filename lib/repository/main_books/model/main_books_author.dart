import 'package:json_annotation/json_annotation.dart';

part 'main_books_author.g.dart';

@JsonSerializable()
class MainBooksAuthor {
  final int id;
  final String forename;
  final String surname;
  final String patronymic;

  MainBooksAuthor(
    this.id,
    this.forename,
    this.surname,
    this.patronymic,
  );

  factory MainBooksAuthor.fromJson(Map<String, dynamic> json) =>
      _$MainBooksAuthorFromJson(json);
}
