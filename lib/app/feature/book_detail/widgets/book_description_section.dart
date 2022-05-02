import 'package:flutter/material.dart';
import 'package:library_web/app/common/resources/res_colors.dart';

class BookDescriptionSection extends StatelessWidget {
  const BookDescriptionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: ResColors.bgGrey,
      ),
      child: const Center(
        child: Text('Здесь скоро будет описание :)'),
      ),
    );
  }
}
