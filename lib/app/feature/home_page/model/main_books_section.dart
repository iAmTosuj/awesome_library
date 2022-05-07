import 'package:json_annotation/json_annotation.dart';

part 'main_books_section.g.dart';

@JsonSerializable()
class MainBooksSection {
  final int number;
  final String title;
  final String key;

  factory MainBooksSection.fromJson(Map<String, Object?> json) =>
      _$MainBooksSectionFromJson(json);

  MainBooksSection(this.number, this.title, this.key);
}
