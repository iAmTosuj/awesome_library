import 'package:flutter/material.dart';
import 'package:library_web/app/common/injector/d_i.dart';
import 'package:library_web/app/common/resources/styles/res_button_style.dart';
import 'package:library_web/app/common/resources/styles/res_colors.dart';
import 'package:library_web/app/common/widgets/action_button.dart';
import 'package:library_web/app/common/widgets/book_preview.dart';
import 'package:library_web/app/feature/book_detail/model/book_detail_model.dart';
import 'package:library_web/app/feature/home_page/state/MainController.dart';

class BookInfoWidget extends StatelessWidget {
  final BookDetailModel bookDetailModel;

  const BookInfoWidget({Key? key, required this.bookDetailModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BookPreview(
          url: 'http://10.0.0.2${bookDetailModel.url}',
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
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: ResColors.text,
                  ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              bookDetailModel.author,
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
                  bookDetailModel.author,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: ResColors.textSecondary,
                      ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Text(
                  bookDetailModel.author,
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
                  onTap: () =>
                      DI.find<MainPageNotifier>().getBook(bookDetailModel.id),
                  text: 'Взять'),
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
            child: Text('Здесь скоро будет что-то интересное :)'),
          ),
        ),
      ],
    );
  }
}
