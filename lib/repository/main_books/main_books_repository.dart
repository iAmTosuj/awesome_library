import 'package:library_web/repository/main_books/model/main_books_response.dart';

abstract class MainBooksRepository {
  Future<List<MainBooksResponse>> getBooks();
}
