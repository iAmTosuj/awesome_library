import 'package:flutter/material.dart';
import 'package:library_web/app/common/data/get_book/get_book_repository.dart';
import 'package:library_web/app/common/injector/d_i.dart';
import 'package:library_web/app/common/resources/res_button_style.dart';
import 'package:library_web/app/common/resources/res_colors.dart';
import 'package:library_web/app/common/widgets/action_button.dart';
import 'package:library_web/app/common/widgets/book_preview.dart';
import 'package:library_web/app/feature/book_detail/data/books_detail_repository.dart';
import 'package:library_web/app/feature/book_detail/model/book_detail_model.dart';
import 'package:library_web/app/feature/book_detail/state/book_detail_provider.dart';
import 'package:provider/provider.dart';

class BookDetailPage extends StatelessWidget {
  final int id;

  const BookDetailPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BookDetailProvider(
        id: id,
        getBookRepository: DI.find<GetBookRepository>(),
        bookDetailRepository: DI.find<BookDetailRepository>(),
      )..fetch(),
      child: Scaffold(
        backgroundColor: ResColors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Column(
              children: [
                Consumer<BookDetailProvider>(
                  builder: (context, provider, child) {
                    final BookDetailModel? bookDetailModel =
                        provider.bookDetailModel;

                    if (bookDetailModel == null) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    return Center(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 700),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BookPreview(
                                  url:
                                      'http://10.0.0.2:1313${bookDetailModel.url}',
                                ),
                                const SizedBox(
                                  width: 24,
                                ),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(80),
                                          color: ResColors.bgGray40,
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6, horizontal: 12),
                                        child: Text(
                                          bookDetailModel.category,
                                          style: const TextStyle(
                                            color: ResColors.textSecondary,
                                          ),
                                        )),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      bookDetailModel.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5
                                          ?.copyWith(
                                            color: ResColors.text,
                                          ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      bookDetailModel.author,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          ?.copyWith(
                                            color: ResColors.textSecondary,
                                          ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          bookDetailModel.author,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2
                                              ?.copyWith(
                                                color: ResColors.textSecondary,
                                              ),
                                        ),
                                        const SizedBox(
                                          width: 40,
                                        ),
                                        Text(
                                          bookDetailModel.author,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2
                                              ?.copyWith(
                                                color: ResColors.textSecondary,
                                              ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    SizedBox(
                                      width: 152,
                                      child: ActionButton(
                                          style: ResButtonStyle.primary,
                                          onTap: () {},
                                          text: 'Взять'),
                                    )
                                  ],
                                )),
                                Container(
                                  height: 300,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    color: ResColors.bgGrey,
                                  ),
                                  child: const Center(
                                    child: Text(
                                        'Здесь скоро будет что-то интересное :)'),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const Divider(),
                            const SizedBox(
                              height: 24,
                            ),
                            Container(
                              height: 100,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                color: ResColors.bgGrey,
                              ),
                              child: const Center(
                                child: Text(
                                    'Здесь скоро будет что-то интересное :)'),
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            Container(
                              height: 150,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                color: ResColors.bgGrey,
                              ),
                              child: const Center(
                                child: Text(
                                    'Здесь скоро будет что-то интересное :)'),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
