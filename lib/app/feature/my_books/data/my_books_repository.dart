import 'package:library_web/app/feature/my_books/model/my_book_response.dart';

abstract class MyBooksRepository {
  Future<List<MyBookResponse>> fetchBooks();
}
