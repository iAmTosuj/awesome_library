import 'package:library_web/app/feature/home_page/model/main_books_response.dart';
import 'package:library_web/app/feature/home_page/model/main_books_section.dart';

abstract class MainBooksRepository {
  Future<List<MainBooksResponse>> fetchBooks(String query);
  Future<void> getBook(int id);
  Future<List<MainBooksSection>> getSections();
}
