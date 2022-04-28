import 'package:json_annotation/json_annotation.dart';
import 'package:library_web/app/feature/home_page/model/main_books_author.dart';
import 'package:library_web/app/feature/home_page/model/main_books_section.dart';

part 'main_books_response.g.dart';

@JsonSerializable()
class MainBooksResponse {
  final int id;
  final String title;
  final MainBooksSection section;
  final List<MainBooksAuthor> authors;
  final String cover;
  final bool isAvailable;

  MainBooksResponse(this.id, this.title, this.section, this.authors, this.cover, this.isAvailable);

  factory MainBooksResponse.fromJson(Map<String, dynamic> json) =>
      _$MainBooksResponseFromJson(json);
}
