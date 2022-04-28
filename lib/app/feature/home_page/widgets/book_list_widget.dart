import 'package:flutter/material.dart';
import 'package:library_web/app/feature/home_page/model/book_model.dart';
import 'package:library_web/app/feature/home_page/widgets/book_card.dart';

class BookListWidget extends StatelessWidget {
  final List<BookModel> books;

  const BookListWidget({Key? key, required this.books}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: books
            .map(
              (e) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: BookCard(
                  book: e,
                ),
              ),
            )
            .toList());
  }
}
