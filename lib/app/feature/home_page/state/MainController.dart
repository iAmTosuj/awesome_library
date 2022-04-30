import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:library_web/app/common/network_client/main_network_client.dart';
import 'package:library_web/app/feature/home_page/data/main_books_repository_impl.dart';
import 'package:library_web/app/feature/home_page/model/book_model.dart';
import 'package:library_web/app/feature/home_page/model/main_books_response.dart';
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
  Timer? _debounce;
  List<List<BookListModel>> bookListModel = [];
  List<BookModel> staticBooksModel = [];

  void fetchBook() async {
    final List<MainBooksResponse> response =
        await MainBooksRepositoryImply(mainNetworkClient: MainNetworkClient())
            .getBooks();

    List<BookModel> books = response
        .map<BookModel>((e) => BookModel(
              id: e.id,
              path: 'http://10.0.0.2:1313${e.cover}',
              name: e.title,
              category: e.section.title,
              author:
                  '${e.authors.first.forename} ${e.authors.first.surname} ${e.authors.first.forename}',
            ))
        .toList();

    bookListModel = _getFormattedBookList(books);
    staticBooksModel = books;

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
