import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:library_web/app/common/resources/styles/res_colors.dart';

class BookPreview extends StatelessWidget {
  final String url;
  final String? busyDate;

  const BookPreview({Key? key, required this.url, this.busyDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CachedNetworkImage(
          imageUrl: url,
          fit: BoxFit.cover,
          height: 233,
          width: 168,
        ),
        if (busyDate != null)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(4),
                alignment: Alignment.bottomRight,
                decoration: const BoxDecoration(
                    color: ResColors.warning,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Text(
                  busyDate!,
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      ?.copyWith(color: ResColors.white),
                ),
              ),
            ],
          )
      ],
    );
  }
}
