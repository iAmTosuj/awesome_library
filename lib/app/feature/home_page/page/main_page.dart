import 'package:flutter/material.dart';
import 'package:library_web/app/common/injector/d_i.dart';
import 'package:library_web/app/common/resources/enums/page_status_enum.dart';
import 'package:library_web/app/common/resources/modal_info/res_modal_content.dart';
import 'package:library_web/app/common/resources/styles/res_colors.dart';
import 'package:library_web/app/common/router/router_settings.dart';
import 'package:library_web/app/common/widgets/cursor_pointer_detector.dart';
import 'package:library_web/app/common/widgets/info_widget.dart';
import 'package:library_web/app/feature/home_page/model/book_model.dart';
import 'package:library_web/app/feature/home_page/state/MainController.dart';
import 'package:library_web/app/feature/home_page/widgets/book_category_widget.dart';
import 'package:library_web/app/feature/home_page/widgets/book_list_widget.dart';
import 'package:library_web/app/feature/home_page/widgets/book_not_found.dart';
import 'package:library_web/app/feature/home_page/widgets/search_widget.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  final String query;

  const MainPage({Key? key, required this.query}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Consumer<MainPageNotifier>(
              builder: (_, state, __) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: state.category
                      .map<Widget>((e) => Container(
                            decoration: BoxDecoration(
                                color: e.key == widget.query
                                    ? ResColors.blueSecondary
                                    : ResColors.white,
                                borderRadius: BorderRadius.circular(4)),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 8),
                            child: DefaultTextStyle(
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .merge(TextStyle(
                                        color: e.key == widget.query
                                            ? ResColors.bluePrimary
                                            : ResColors.text)),
                                child: CursorPointerDetector(
                                    onTap: () => RouterSettings.router
                                        .go('/?section=${e.key}'),
                                    child: Text(e.title))),
                          ))
                      .toList(),
                );
              },
            ),
          ),
        ),
        Container(
          width: 1,
          height: double.infinity,
          color: ResColors.textSecondary,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Consumer<MainPageNotifier>(builder: (_, state, __) {
                  switch (state.pageStatus) {
                    case PageStatusEnum.loading:
                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 100),
                          child: CircularProgressIndicator(),
                        ),
                      );

                    case PageStatusEnum.error:
                      return Center(
                        child:
                            InfoWidget(modalContent: ResModalContent.errorInfo),
                      );

                    case PageStatusEnum.success:
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
                          if (state.bookListModel.isEmpty)
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 24,
                                horizontal: 12,
                              ),
                              child: BookNotFound(),
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
                      );
                  }
                }),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    DI.find<MainPageNotifier>().initProvider(widget.query);

    super.initState();
  }

  @override
  void didUpdateWidget(MainPage oldWidget) {
    if (oldWidget.query != widget.query) {
      DI.find<MainPageNotifier>().initProvider(widget.query);
    }
  }
}
