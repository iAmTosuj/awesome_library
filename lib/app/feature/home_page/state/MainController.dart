import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:library_web/app/common/injector/d_i.dart';
import 'package:library_web/app/common/resources/enums/page_status_enum.dart';
import 'package:library_web/app/common/router/router_settings.dart';
import 'package:library_web/app/feature/home_page/data/main_books_repository.dart';
import 'package:library_web/app/feature/home_page/model/book_model.dart';
import 'package:library_web/app/feature/home_page/model/main_books_response.dart';
import 'package:library_web/app/feature/home_page/model/main_books_section.dart';
import 'package:library_web/generated/assets.dart';

final List<BookModel> bookModel = [
  BookModel(
    name: 'Приключения авантюриста',
    path: Assets.imagesTn,
    author: 'фронтендер',
    category: 'Информатика',
    id: 1,
  ),
  BookModel(
    name: 'Приключения авантюриста',
    path: Assets.imagesTn,
    author: 'фронтендер',
    category: 'Информатика',
    id: 2,
  ),
  BookModel(
    name: 'Приключения авантюриста',
    path: Assets.imagesTn,
    author: 'фронтендер',
    category: 'Информатика',
    id: 3,
  ),
  BookModel(
    name: 'Приключения авантюриста',
    path: Assets.imagesTn,
    author: 'фронтендер',
    category: 'Информатика',
    id: 4,
  ),
  BookModel(
    name: 'Приключения авантюриста',
    path: Assets.imagesTn,
    author: 'фронтендер',
    category: 'Информатика',
    id: 5,
  ),
  BookModel(
    name: 'Приключения авантюриста',
    path: Assets.imagesTn,
    author: 'фронтендер',
    category: 'Информатика',
    id: 6,
  ),
  BookModel(
    name: 'Приключения авантюриста',
    path: Assets.imagesTn,
    author: 'фронтендер',
    category: 'Информатика',
    id: 7,
  ),
  BookModel(
    name: 'Приключения авантюриста',
    path: Assets.imagesTn,
    author: 'фронтендер',
    category: 'Информатика',
    id: 8,
  ),
];

class MainPageNotifier extends ChangeNotifier {
  String selectedSectionId = '1';

  Timer? _debounce;
  PageStatusEnum pageStatus = PageStatusEnum.loading;
  List<List<BookListModel>> bookListModel = [];
  List<BookModel> staticBooksModel = [];
  List<MainBooksSection> category = [];

  void initProvider(String query) async {
    try {
      final List<MainBooksSection> sections =
          await DI.find<MainBooksRepository>().getSections();

      if (!sections.any((element) => element.key == query)) {
        RouterSettings.router.go('/?section=${sections.first.key}');
        return;
      } else {
        selectedSectionId = query;
      }

      category = sections;

      fetchBook();
    } catch (_) {
      pageStatus = PageStatusEnum.error;
    }

    notifyListeners();
  }

  void fetchBook() async {
    try {
      final List<MainBooksResponse> response =
          await DI.find<MainBooksRepository>().fetchBooks(selectedSectionId);

      List<BookModel> books = response
          .map<BookModel>((e) => BookModel(
                id: e.id,
                path: 'http://10.0.0.2${e.cover}',
                name: e.title,
                category: e.section.title,
                author:
                    '${e.authors.first.forename} ${e.authors.first.surname} ${e.authors.first.forename}',
              ))
          .toList();

      bookListModel = _getFormattedBookList(books);
      staticBooksModel = books;
      pageStatus = PageStatusEnum.success;
    } catch (_) {
      pageStatus = PageStatusEnum.error;
    }

    notifyListeners();
  }

  void onSearchBook(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      bookListModel =
          _getFormattedBookList(_getFilteredBookList(staticBooksModel, query));

      notifyListeners();
    });
  }

  void getBook(int id) async {
    await DI.find<MainBooksRepository>().getBook(id);
  }
}

List<List<BookListModel>> _getFormattedBookList(List<BookModel> list) {
  var lastCategory = '';
  final List<List<BookListModel>> bookListModel = [];

  for (var item in list) {
    if (lastCategory != item.category) {
      bookListModel.add(<BookCategory>[BookCategory(name: item.category)]);
      bookListModel.add(<BookModel>[]);
      lastCategory = item.category;
    }

    bookListModel.last.add(item);
  }

  return bookListModel;
}

List<BookModel> _getFilteredBookList(List<BookModel> list, String query) {
  return list
      .where((element) =>
          element.name.toLowerCase().contains(query.toLowerCase()) ||
          element.author.toLowerCase().contains(query.toLowerCase()) ||
          element.category.toLowerCase().contains(query.toLowerCase()))
      .toList();
}
