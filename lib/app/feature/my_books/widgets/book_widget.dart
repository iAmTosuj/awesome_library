import 'package:flutter/material.dart';
import 'package:library_web/app/common/resources/styles/res_button_style.dart';
import 'package:library_web/app/common/resources/styles/res_colors.dart';
import 'package:library_web/app/common/widgets/action_button.dart';
import 'package:library_web/app/feature/my_books/model/my_book_response.dart';

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
            Container(
              width: 116,
              height: 160,
              color: ResColors.bgGray40,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    style: ResButtonStyle.secondary,
                    onTap: () {},
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
