import 'package:json_annotation/json_annotation.dart';
import 'package:library_web/app/feature/home_page/model/main_books_author.dart';
import 'package:library_web/app/feature/home_page/model/main_books_section.dart';

part 'book_detail_response.g.dart';

@JsonSerializable()
class BookDetailResponse {
  final int id;
  final String title;
  final MainBooksSection section;
  final List<MainBooksAuthor> authors;
  final String cover;
  final bool isAvailable;
  final int edition;
  final int publicationYear;

  BookDetailResponse(this.id, this.title, this.section, this.authors, this.cover, this.isAvailable,
      this.edition, this.publicationYear);

  factory BookDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$BookDetailResponseFromJson(json);
}
