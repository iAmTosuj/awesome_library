import 'package:flutter/material.dart';
import 'package:library_web/app/feature/home_page/model/book_model.dart';
import 'package:library_web/app/feature/home_page/state/MainController.dart';
import 'package:library_web/app/feature/home_page/widgets/book_category_widget.dart';
import 'package:library_web/app/feature/home_page/widgets/book_list_widget.dart';
import 'package:library_web/app/feature/home_page/widgets/search_widget.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Consumer<MainPageNotifier>(
              builder: (_, state, __) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          constraints: const BoxConstraints(maxWidth: 600),
                          margin: const EdgeInsets.only(top: 24),
                          child: SearchWidget(),
                        ),
                      ),
                      if (state.bookListModel.isEmpty)
                        const Center(
                          child: Text('По вашему запросу ничего не найдено'),
                        )
                      else
                        ...state.bookListModel.map<Widget>((e) {
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
                  )),
        ],
      ),
    );
  }
}
