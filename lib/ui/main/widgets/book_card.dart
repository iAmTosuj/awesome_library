import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_web/resources/res_button_style.dart';
import 'package:library_web/router/route_info.dart';
import 'package:library_web/state/main/model/book_model.dart';
import 'package:library_web/ui/base/action_button.dart';

class BookCard extends StatelessWidget {
  final BookModel book;

  const BookCard({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).goNamed(RouteInfo.bookDetail.name,
          params: {'id': book.id.toString()}),
      child: SizedBox(
        height: 400,
        width: 200,
        child: Card(
          elevation: 2,
          clipBehavior: Clip.hardEdge,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Hero(
                  tag: 'image_${book.id}',
                  child: SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      book.path,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SelectableText(
                  book.name,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SelectableText(
                  'Автор: ${book.author}',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ActionButton(
                    onTap: () {},
                    text: 'Одолжить',
                    style: ResButtonStyle.primary,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
