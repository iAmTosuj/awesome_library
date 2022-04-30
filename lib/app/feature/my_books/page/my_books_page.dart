import 'package:flutter/material.dart';
import 'package:library_web/app/feature/my_books/widgets/book_widget.dart';

class MyBooksPage extends StatelessWidget {
  const MyBooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24),
          child:
              Text('Мои книги', style: Theme.of(context).textTheme.headline5),
        ),
        Wrap(
          children: const [
            BookWidget(),
            SizedBox(
              width: 16,
            ),
            BookWidget(),
            SizedBox(
              width: 16,
            ),
            BookWidget(),
            SizedBox(
              width: 16,
            ),
            BookWidget(),
            SizedBox(
              width: 16,
            ),
            BookWidget(),
            SizedBox(
              width: 16,
            ),
            BookWidget(),
          ],
        )
      ],
    );
  }
}
