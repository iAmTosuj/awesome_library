import 'dart:async';

import 'package:get/get.dart';
import 'package:library_web/generated/assets.dart';
import 'package:library_web/state/main/model/book_model.dart';

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

class MainController extends GetxController {
  Timer? _debounce;
  List<List<BookListModel>> bookListModel = _getFormattedBookList(bookModel);

  void onSearchBook(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      bookListModel =
          _getFormattedBookList(_getFilteredBookList(bookModel, query));

      update();
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
