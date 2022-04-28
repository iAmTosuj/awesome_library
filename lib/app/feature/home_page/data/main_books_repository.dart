import 'package:library_web/app/feature/home_page/model/main_books_response.dart';

abstract class MainBooksRepository {
  Future<List<MainBooksResponse>> getBooks();
}
