import 'package:flutter/material.dart';
import 'package:library_web/core/injector/d_i.dart';
import 'package:library_web/resources/res_colors.dart';
import 'package:library_web/state/main/MainController.dart';
import 'package:library_web/state/main/model/book_model.dart';
import 'package:library_web/ui/main/widgets/book_category_widget.dart';
import 'package:library_web/ui/main/widgets/book_list_widget.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  final TextEditingController _textController = TextEditingController();
  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ResColors.bgGrey,
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: Container(
          constraints: const BoxConstraints(maxWidth: 600),
          alignment: Alignment.bottomRight,
          child: TextField(
            controller: _textController,
            decoration: InputDecoration(
              isDense: true,
              fillColor: ResColors.bgGray40,
              labelText: 'Найти',
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
            onChanged: (value) =>
                DI.find<MainPageNotifier>().onSearchBook(value),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Consumer<MainPageNotifier>(
                builder: (_, state, __) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: state.bookListModel.map<Widget>((e) {
                        if (e is List<BookCategory>) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 24, horizontal: 12),
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
                    )),
          ],
        ),
      ),
    );
  }
}
