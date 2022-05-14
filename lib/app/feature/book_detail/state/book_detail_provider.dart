import 'package:flutter/material.dart';
import 'package:library_web/app/common/data/get_book/get_book_repository.dart';
import 'package:library_web/app/common/resources/enums/page_status_enum.dart';
import 'package:library_web/app/common/util/show_snack_bar.dart';
import 'package:library_web/app/feature/book_detail/data/books_detail_repository.dart';
import 'package:library_web/app/feature/book_detail/model/book_detail_response.dart';

class BookDetailProvider extends ChangeNotifier {
  BookDetailResponse? bookDetailModel;
  PageStatusEnum pageStatus = PageStatusEnum.loading;
  bool isBookLoading = false;

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

      bookDetailModel = response;
      pageStatus = PageStatusEnum.success;
    } catch (_) {
      pageStatus = PageStatusEnum.error;
    }

    notifyListeners();
  }

  Future<void> getBook() async {
    try {
      changeBookLoadingStatus(true);

      await _getBookRepository.getBook(id);

      showSnackBar(content: 'Вы взяли книгу');
    } catch (_) {
      showSnackBar(content: 'Произошла ошибка');
    }

    changeBookLoadingStatus(false);
  }

  void changeBookLoadingStatus(bool status) {
    isBookLoading = status;
    print(isBookLoading);
    notifyListeners();
  }
}
