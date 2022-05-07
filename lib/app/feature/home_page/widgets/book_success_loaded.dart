import 'package:flutter/material.dart';
import 'package:library_web/app/feature/home_page/model/book_model.dart';
import 'package:library_web/app/feature/home_page/widgets/book_category_widget.dart';
import 'package:library_web/app/feature/home_page/widgets/book_list_widget.dart';
import 'package:library_web/app/feature/home_page/widgets/book_not_found.dart';
import 'package:library_web/app/feature/home_page/widgets/search_widget.dart';

class BookSuccessLoaded extends StatelessWidget {
  final List<List<BookListModel>> bookListModel;

  const BookSuccessLoaded({Key? key, required this.bookListModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 700,
          padding: const EdgeInsets.symmetric(
            vertical: 24,
            horizontal: 12,
          ),
          child: const SearchWidget(),
        ),
        if (bookListModel.isEmpty)
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 24,
              horizontal: 12,
            ),
            child: BookNotFound(),
          )
        else
          ...bookListModel.map<Widget>((e) {
            if (e is List<BookCategory>) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 24,
                  horizontal: 12,
                ),
                child: BookCategoryWidget(
                  category: e.first.name,
                ),
              );
            }

            if (e is List<BookModel>) {
              return BookListWidget(
                books: e,
              );
            }

            return const SizedBox();
          }).toList(),
      ],
    );
    ;
  }
}
