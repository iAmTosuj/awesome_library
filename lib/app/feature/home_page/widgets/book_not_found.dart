import 'package:flutter/material.dart';
import 'package:library_web/app/common/resources/styles/res_colors.dart';

class BookNotFound extends StatelessWidget {
  const BookNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ничего не нашли по запросу',
          style: Theme.of(context).textTheme.headline5,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Проверьте написание, предложите добавить книгу в библиотеку',
          style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(color: ResColors.textSecondary),
        ),
      ],
    );
  }
}
