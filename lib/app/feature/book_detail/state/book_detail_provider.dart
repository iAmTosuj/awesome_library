import 'package:flutter/material.dart';
import 'package:library_web/app/common/network_client/main_network_client.dart';
import 'package:library_web/app/feature/book_detail/data/books_detail_repository_impl.dart';
import 'package:library_web/app/feature/book_detail/model/book_detail_model.dart';
import 'package:library_web/app/feature/book_detail/model/book_detail_response.dart';

class BookDetailProvider extends ChangeNotifier {
  BookDetailModel? bookDetailModel;
  final int id;

  BookDetailProvider({required this.id});

  Future<void> fetch() async {
    final BookDetailResponse response =
        await BookDetailRepositoryImpl(mainNetworkClient: MainNetworkClient())
            .getBook(id);

    bookDetailModel = BookDetailModel(
      url: response.cover,
      id: response.id,
      category: response.section.title,
      author: response.authors.first.forename,
      name: response.title,
    );

    notifyListeners();
  }
}
