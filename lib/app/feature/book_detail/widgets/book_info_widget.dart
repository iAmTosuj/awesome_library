import 'package:flutter/material.dart';
import 'package:library_web/app/common/resources/styles/res_button_style.dart';
import 'package:library_web/app/common/resources/styles/res_colors.dart';
import 'package:library_web/app/common/widgets/action_button.dart';
import 'package:library_web/app/common/widgets/book_preview.dart';
import 'package:library_web/app/feature/book_detail/model/book_detail_response.dart';
import 'package:library_web/app/feature/book_detail/state/book_detail_provider.dart';
import 'package:provider/provider.dart';

class BookInfoWidget extends StatelessWidget {
  final BookDetailResponse bookDetailModel;
  final bool isLoading;

  const BookInfoWidget({
    Key? key,
    required this.bookDetailModel,
    required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BookPreview(
          url: 'http://10.0.0.2${bookDetailModel.cover}',
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
                  borderRadius: BorderRadius.circular(80),
                  color: ResColors.bgGray40,
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                child: Text(
                  bookDetailModel.section.title,
                  style: const TextStyle(
                    color: ResColors.textSecondary,
                  ),
                )),
            const SizedBox(
              height: 8,
            ),
            Text(
              bookDetailModel.title,
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: ResColors.text,
                  ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              bookDetailModel.authors.first.forename,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: ResColors.textSecondary,
                  ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  bookDetailModel.authors.first.forename,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: ResColors.textSecondary,
                      ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Text(
                  bookDetailModel.authors.first.forename,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
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
                  isLoading: isLoading,
                  onTap: bookDetailModel.isAvailable && !isLoading
                      ? () => Provider.of<BookDetailProvider>(context).getBook()
                      : null,
                  text: '??????????'),
            )
          ],
        )),
        Container(
          height: 300,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: ResColors.bgGrey,
          ),
          child: const Center(
            child: Text('?????????? ?????????? ?????????? ??????-???? ???????????????????? :)'),
          ),
        ),
      ],
    );
  }
}
