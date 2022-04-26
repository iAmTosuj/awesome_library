import 'package:flutter/material.dart';

class BookCategoryWidget extends StatelessWidget {
  final String category;

  const BookCategoryWidget({Key? key, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      '$category 2: Номер, Название',
      style: Theme.of(context).textTheme.headline5,
    );
  }
}
