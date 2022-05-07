import 'package:flutter/material.dart';
import 'package:library_web/app/common/resources/styles/res_colors.dart';
import 'package:library_web/app/common/router/router_settings.dart';
import 'package:library_web/app/common/widgets/cursor_pointer_detector.dart';
import 'package:library_web/app/feature/home_page/model/main_books_section.dart';

class BookSectionItemWidget extends StatelessWidget {
  final bool isSelected;
  final MainBooksSection section;

  const BookSectionItemWidget(
      {Key? key, required this.isSelected, required this.section})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: isSelected ? ResColors.blueSecondary : ResColors.white,
          borderRadius: BorderRadius.circular(4)),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: DefaultTextStyle(
          style: Theme.of(context).textTheme.bodyText1!.merge(TextStyle(
              color: isSelected ? ResColors.bluePrimary : ResColors.text)),
          child: CursorPointerDetector(
              onTap: () => RouterSettings.router.go('/?section=${section.key}'),
              child: Text(section.title))),
    );
  }
}
