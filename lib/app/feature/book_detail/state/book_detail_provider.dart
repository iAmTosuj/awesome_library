import 'package:flutter/material.dart';
import 'package:library_web/app/common/data/get_book/get_book_repository.dart';
import 'package:library_web/app/common/resources/enums/page_status_enum.dart';
import 'package:library_web/app/feature/book_detail/data/books_detail_repository.dart';
import 'package:library_web/app/feature/book_detail/model/book_detail_model.dart';
import 'package:library_web/app/feature/book_detail/model/book_detail_response.dart';

class BookDetailProvider extends ChangeNotifier {
  BookDetailModel? bookDetailModel;
  PageStatusEnum pageStatus = PageStatusEnum.loading;
  final int id;
  final GetBookRepository _getBookRepository;
  final BookDetailRepository _bookDetailRepository;

  BookDetailProvider({
    required this.id,
    required GetBookRepository getBookRepository,
    required BookDetailRepository bookDetailRepository,
  })  : _getBookRepository = getBookRepository,
        _bookDetailRepository = bookDetailRepository;

  Future<void> fetch() async {
    try {
      pageStatus = PageStatusEnum.loading;

      final BookDetailResponse response =
          await _bookDetailRepository.getBook(id);

      bookDetailModel = BookDetailModel(
        url: response.cover,
        id: response.id,
        category: response.section.title,
        author: response.authors.first.forename,
        name: response.title,
      );
      pageStatus = PageStatusEnum.success;
    } catch (_) {
      pageStatus = PageStatusEnum.error;
    }

    notifyListeners();
  }

  Future<void> getBook() async {
    await _getBookRepository.getBook(id);

    notifyListeners();
  }
}
