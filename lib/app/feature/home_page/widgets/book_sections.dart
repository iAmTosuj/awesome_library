import 'package:flutter/material.dart';
import 'package:library_web/app/common/resources/styles/res_colors.dart';
import 'package:library_web/app/feature/home_page/state/MainController.dart';
import 'package:library_web/app/feature/home_page/widgets/book_sections_item_widget.dart';
import 'package:provider/provider.dart';

class BookSections extends StatelessWidget {
  final String selectedCategory;

  const BookSections({Key? key, required this.selectedCategory})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ResColors.white,
      height: double.infinity,
      width: 200,
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Consumer<MainPageNotifier>(
          builder: (_, state, __) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: state.category
                  .map<Widget>((e) => BookSectionItemWidget(
                      isSelected: e.key == selectedCategory, section: e))
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}
