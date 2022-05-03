import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:library_web/app/common/resources/modal_info/res_modal_content.dart';

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
        Text(modalContent.title),
        const SizedBox(
          height: 16,
        ),
        Text(modalContent.subtitle),
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
