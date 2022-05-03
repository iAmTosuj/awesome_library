import 'package:flutter/material.dart';
import 'package:library_web/app/common/resources/styles/res_colors.dart';

class BookReviewSection extends StatelessWidget {
  const BookReviewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: ResColors.bgGrey,
      ),
      child: const Center(
        child: Text('Здесь скоро будет отзывы ваших коллег :)'),
      ),
    );
  }
}
