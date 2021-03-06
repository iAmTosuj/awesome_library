import 'package:json_annotation/json_annotation.dart';
import 'package:library_web/app/common/model/book_model_base.dart';
import 'package:library_web/app/feature/home_page/model/main_books_author.dart';
import 'package:library_web/app/feature/home_page/model/main_books_section.dart';

part 'main_books_response.g.dart';

@JsonSerializable()
class MainBooksResponse extends BookModelBase {
  MainBooksResponse(
    int id,
    String title,
    MainBooksSection section,
    List<MainBooksAuthor> authors,
    String cover,
    bool isAvailable,
  ) : super(
          id: id,
          title: title,
          section: section,
          authors: authors,
          cover: cover,
          isAvailable: isAvailable,
        );

  factory MainBooksResponse.fromJson(Map<String, dynamic> json) =>
      _$MainBooksResponseFromJson(json);
}
