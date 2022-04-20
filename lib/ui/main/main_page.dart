import 'package:flutter/material.dart';
import 'package:library_web/resources/res_colors.dart';
import 'package:library_web/ui/main/widgets/book_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ResColors.bgGrey,
      appBar: AppBar(
        title: Text('Потрясающая библиотека'),
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: MediaQuery.of(context).size.width ~/ 250,
          childAspectRatio: 0.6,
          crossAxisSpacing: 24,
          mainAxisSpacing: 24,
          children: const [
            BookCard(),
            BookCard(),
            BookCard(),
            BookCard(),
            BookCard(),
            BookCard(),
          ],
        ),
      ),
    );
  }
}
