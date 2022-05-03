import 'package:flutter/material.dart';
import 'package:library_web/app/common/resources/styles/res_button_style.dart';
import 'package:library_web/app/common/resources/styles/res_colors.dart';
import 'package:library_web/app/common/widgets/action_button.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({Key? key}) : super(key: key);

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
                  const Text('Волшебная принцесса'),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                      'Пыльца феи и другие ингредиенты для приворотного зелья'),
                  const SizedBox(
                    height: 16,
                  ),
                  ActionButton(
                    style: ResButtonStyle.secondary,
                    onTap: () {},
                    text: 'Взять повторно',
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
