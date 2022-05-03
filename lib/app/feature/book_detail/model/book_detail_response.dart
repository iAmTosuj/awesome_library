import 'package:json_annotation/json_annotation.dart';
import 'package:library_web/app/common/model/book_model_base.dart';
import 'package:library_web/app/feature/home_page/model/main_books_author.dart';
import 'package:library_web/app/feature/home_page/model/main_books_section.dart';

part 'book_detail_response.g.dart';

@JsonSerializable()
class BookDetailResponse extends BookModelBase {
  final int edition;
  final int publicationYear;

  BookDetailResponse(
      int id,
      String title,
      MainBooksSection section,
      List<MainBooksAuthor> authors,
      String cover,
      bool isAvailable,
      this.edition,
      this.publicationYear)
      : super(
          id: id,
          title: title,
          section: section,
          authors: authors,
          cover: cover,
          isAvailable: isAvailable,
        );

  factory BookDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$BookDetailResponseFromJson(json);
}
