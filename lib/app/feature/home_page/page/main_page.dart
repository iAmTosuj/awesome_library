import 'package:flutter/material.dart';
import 'package:library_web/app/common/injector/d_i.dart';
import 'package:library_web/app/common/resources/enums/page_status_enum.dart';
import 'package:library_web/app/common/resources/modal_info/res_modal_content.dart';
import 'package:library_web/app/common/resources/styles/res_colors.dart';
import 'package:library_web/app/common/widgets/info_widget.dart';
import 'package:library_web/app/feature/home_page/state/MainController.dart';
import 'package:library_web/app/feature/home_page/widgets/book_sections.dart';
import 'package:library_web/app/feature/home_page/widgets/book_success_loaded.dart';
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
        BookSections(selectedCategory: widget.query),
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
                      return BookSuccessLoaded(
                        bookListModel: state.bookListModel,
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

    super.didUpdateWidget(oldWidget);
  }
}
