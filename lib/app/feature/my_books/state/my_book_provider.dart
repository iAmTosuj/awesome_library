import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_web/app/common/injector/d_i.dart';
import 'package:library_web/app/common/resources/enums/page_status_enum.dart';
import 'package:library_web/app/common/util/show_snack_bar.dart';
import 'package:library_web/app/feature/home_page/data/main_books_repository.dart';
import 'package:library_web/app/feature/my_books/data/my_books_repository.dart';
import 'package:library_web/app/feature/my_books/model/my_book_response.dart';

class MyBookProvider extends ChangeNotifier {
  PageStatusEnum pageStatus = PageStatusEnum.loading;
  List<MyBookResponse> myBooks = [];
  Set<int> loadingBooks = {};

  Future<void> fetch() async {
    try {
      myBooks = (await DI.find<MyBooksRepository>().fetchBooks())
          .where((element) => element.status != 'finished')
          .toList();

      pageStatus = PageStatusEnum.success;
    } catch (_) {
      pageStatus = PageStatusEnum.error;
    }

    notifyListeners();
  }

  void returnBook(int id) async {
    try {
      loadingBooks.add(id);

      notifyListeners();
      await DI.find<MainBooksRepository>().returnBook(id);

      myBooks = myBooks.where((element) => element.id != id).toList();

      showSnackBar(content: 'Вы вернули книгу');

      loadingBooks.remove(id);
      notifyListeners();
    } catch (_) {
      showSnackBar(content: 'Произошла ошибка');
    }
  }
}
