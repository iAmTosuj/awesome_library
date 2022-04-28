import 'package:library_web/app/feature/book_detail/model/book_detail_response.dart';

abstract class BookDetailRepository {
  Future<BookDetailResponse> getBook(int id);
}
