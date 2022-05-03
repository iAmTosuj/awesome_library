import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:library_web/app/common/model/book_model_base.dart';
import 'package:library_web/app/feature/home_page/model/main_books_author.dart';
import 'package:library_web/app/feature/home_page/model/main_books_section.dart';

part 'my_book_response.g.dart';

@JsonSerializable()
class MyBookResponse extends BookModelBase {
  final String status;
  final String dtReturn;

  MyBookResponse(
    int id,
    String title,
    MainBooksSection section,
    List<MainBooksAuthor> authors,
    String cover,
    bool isAvailable,
    this.status,
    this.dtReturn,
  ) : super(
          id: id,
          title: title,
          section: section,
          authors: authors,
          cover: cover,
          isAvailable: isAvailable,
        );

  factory MyBookResponse.fromJson(Map<String, dynamic> json) =>
      _$MyBookResponseFromJson(json);
}
