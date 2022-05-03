import 'package:library_web/app/feature/home_page/model/main_books_author.dart';
import 'package:library_web/app/feature/home_page/model/main_books_section.dart';

abstract class BookModelBase {
  final int id;
  final String title;
  final MainBooksSection section;
  final List<MainBooksAuthor> authors;
  final String cover;
  final bool isAvailable;

  BookModelBase({
    required this.id,
    required this.title,
    required this.section,
    required this.authors,
    required this.cover,
    required this.isAvailable,
  });
}
