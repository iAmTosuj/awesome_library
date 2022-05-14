import 'package:flutter/material.dart';
import 'package:library_web/app/common/resources/styles/res_button_style.dart';
import 'package:library_web/app/common/resources/styles/res_colors.dart';

class ActionButton extends StatelessWidget {
  final ResButtonStyle style;
  final VoidCallback? onTap;
  final bool isLoading;
  final String text;
  final bool block;

  const ActionButton({
    Key? key,
    required this.style,
    required this.onTap,
    required this.text,
    this.block = false,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: block ? double.infinity : null,
      child: ElevatedButton(
        onPressed: !isLoading ? onTap : null,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(style.backgroundColor),
        ),
        child: isLoading
            ? const SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(
                  color: ResColors.white,
                  strokeWidth: 2,
                ))
            : Text(
                text,
                style: TextStyle(color: style.textColor),
              ),
      ),
    );
  }
}
