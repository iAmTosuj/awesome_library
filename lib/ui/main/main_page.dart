import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:library_web/resources/res_colors.dart';
import 'package:library_web/state/main/MainController.dart';
import 'package:library_web/state/main/model/book_model.dart';
import 'package:library_web/ui/main/widgets/book_category_widget.dart';
import 'package:library_web/ui/main/widgets/book_list_widget.dart';

class MainPage extends StatelessWidget {
  final TextEditingController _textController = TextEditingController();
  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ResColors.bgGrey,
      appBar: AppBar(
        title: const Text('Потрясающая библиотека'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _textController,
              onChanged: (value) =>
                  Get.find<MainController>().onSearchBook(value),
            ),
            GetBuilder<MainController>(
                builder: (_) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _.bookListModel.map<Widget>((e) {
                        if (e is List<BookModel>) {
                          return BookListWidget(
                            books: e,
                          );
                        }
                        if (e is List<BookCategory>) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 16),
                            child: BookCategoryWidget(
                              category: e.first.name,
                            ),
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
