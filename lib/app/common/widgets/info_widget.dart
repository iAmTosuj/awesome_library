import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:library_web/app/common/resources/modal_info/res_modal_content.dart';
import 'package:library_web/app/common/resources/styles/res_colors.dart';

class InfoWidget extends StatelessWidget {
  final ResModalContent modalContent;
  final Widget? bottomWidget;

  const InfoWidget({
    Key? key,
    required this.modalContent,
    this.bottomWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        SvgPicture.asset(modalContent.avatar),
        const SizedBox(
          height: 24,
        ),
        Text(
          modalContent.title,
          style: Theme.of(context).textTheme.headline5,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          modalContent.subtitle,
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: ResColors.textSecondary,
              ),
        ),
        if (bottomWidget != null) ...[
          const SizedBox(
            height: 32,
          ),
          bottomWidget!,
        ],
      ],
    );
  }
}
