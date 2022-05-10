import 'package:flutter/material.dart';
import 'package:library_web/app/common/data/get_book/get_book_repository.dart';
import 'package:library_web/app/common/injector/d_i.dart';
import 'package:library_web/app/common/resources/enums/page_status_enum.dart';
import 'package:library_web/app/common/resources/modal_info/res_modal_content.dart';
import 'package:library_web/app/common/resources/styles/res_colors.dart';
import 'package:library_web/app/common/widgets/info_widget.dart';
import 'package:library_web/app/feature/book_detail/data/books_detail_repository.dart';
import 'package:library_web/app/feature/book_detail/state/book_detail_provider.dart';
import 'package:library_web/app/feature/book_detail/widgets/book_description_section.dart';
import 'package:library_web/app/feature/book_detail/widgets/book_info_widget.dart';
import 'package:library_web/app/feature/book_detail/widgets/book_review_section.dart';
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
          child: Center(
            child: Container(
              padding: const EdgeInsets.only(top: 40.0),
              width: 1000,
              child: Consumer<BookDetailProvider>(
                builder: (context, state, child) {
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
                        children: [
                          BookInfoWidget(
                            bookDetailModel: state.bookDetailModel!,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 24,
                          ),
                          const BookDescriptionSection(),
                          const SizedBox(
                            height: 24,
                          ),
                          const BookReviewSection(),
                        ],
                      );
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
