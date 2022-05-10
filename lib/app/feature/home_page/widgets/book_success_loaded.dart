import 'package:flutter/material.dart';
import 'package:library_web/app/common/resources/styles/res_colors.dart';
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
        ColoredBox(
          color: ResColors.white,
          child: Row(
            children: [
              Container(
                width: 700,
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 42,
                ),
                child: const SearchWidget(),
              ),
            ],
          ),
        ),
        Container(
          height: 1,
          color: ResColors.bgGray60,
        ),
        if (bookListModel.isEmpty)
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 24,
              horizontal: 42,
            ),
            child: BookNotFound(),
          )
        else
          ...bookListModel.map<Widget>((e) {
            if (e is List<BookCategory>) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 24,
                  horizontal: 42,
                ),
                child: BookCategoryWidget(
                  category: e.first.name,
                ),
              );
            }

            if (e is List<BookModel>) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 34,
                ),
                child: BookListWidget(
                  books: e,
                ),
              );
            }

            return const SizedBox();
          }).toList(),
      ],
    );
  }
}
