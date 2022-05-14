import 'package:flutter/material.dart';
import 'package:library_web/app/common/resources/enums/page_status_enum.dart';
import 'package:library_web/app/common/resources/modal_info/res_modal_content.dart';
import 'package:library_web/app/common/resources/styles/res_colors.dart';
import 'package:library_web/app/common/widgets/info_widget.dart';
import 'package:library_web/app/feature/my_books/state/my_book_provider.dart';
import 'package:library_web/app/feature/my_books/widgets/book_widget.dart';
import 'package:provider/provider.dart';

class MyBooksPage extends StatelessWidget {
  const MyBooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ResColors.white,
      body: Center(
        child: SizedBox(
          width: 1000,
          child: ChangeNotifierProvider(
            create: (BuildContext context) => MyBookProvider()..fetch(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24),
                  child: Text('Мои книги',
                      style: Theme.of(context).textTheme.headline5),
                ),
                Consumer<MyBookProvider>(
                  builder: (_, state, __) {
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
                          child: InfoWidget(
                              modalContent: ResModalContent.errorInfo),
                        );

                      case PageStatusEnum.success:
                        if (state.myBooks.isEmpty) {
                          return Column(
                            children: [
                              const SizedBox(
                                height: 100,
                              ),
                              Text(
                                'Здесь будут прочитанные книги',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                'В этом списке будут книги, которые вы взяли и уже вернули ',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          );
                        }
                        return Wrap(
                          children: state.myBooks
                              .map<Widget>((e) => BookWidget(
                                    myBookResponse: e,
                                    isLoading:
                                        state.loadingBooks.contains(e.id),
                                  ))
                              .toList(),
                        );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
