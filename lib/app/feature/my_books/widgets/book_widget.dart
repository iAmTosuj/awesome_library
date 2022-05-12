import 'package:flutter/material.dart';
import 'package:library_web/app/common/resources/styles/res_button_style.dart';
import 'package:library_web/app/common/widgets/action_button.dart';
import 'package:library_web/app/common/widgets/book_preview.dart';
import 'package:library_web/app/feature/my_books/model/my_book_response.dart';
import 'package:library_web/app/feature/my_books/state/my_book_provider.dart';
import 'package:provider/provider.dart';

class BookWidget extends StatelessWidget {
  final MyBookResponse myBookResponse;

  const BookWidget({
    Key? key,
    required this.myBookResponse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 460,
      child: Card(
        elevation: 1,
        child: Row(
          children: [
            BookPreview(url: 'http://10.0.0.2${myBookResponse.cover}'),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  Text(myBookResponse.authors.first.forename),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    myBookResponse.title,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ActionButton(
                    style: ResButtonStyle.primary,
                    onTap: () => Provider.of<MyBookProvider>(context)
                        .returnBook(myBookResponse.id),
                    text: 'Вернуть',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
