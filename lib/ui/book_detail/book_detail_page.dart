import 'package:flutter/material.dart';
import 'package:library_web/generated/assets.dart';

class BookDetailPage extends StatelessWidget {
  const BookDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
                height: 500,
                child: Row(
                  children: [
                    Image.asset(
                      Assets.imagesTn,
                      fit: BoxFit.cover,
                      height: 500,
                      width: 400,
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Название книги'),
                        Text('Автор книги'),
                        Text('В наличии'),
                        Text('Книгу никто не читает'),
                      ],
                    ))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
