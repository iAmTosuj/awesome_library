import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_web/app/common/resources/res_colors.dart';
import 'package:library_web/app/common/router/route_info.dart';
import 'package:library_web/app/feature/home_page/model/book_model.dart';

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
        height: 335,
        width: 162,
        child: Card(
          elevation: 2,
          clipBehavior: Clip.hardEdge,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: CachedNetworkImage(
                  imageUrl: book.path,
                  width: double.infinity,
                  height: 224,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SelectableText(
                  book.author,
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      ?.copyWith(color: ResColors.textSecondary),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SelectableText(
                  book.name,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
