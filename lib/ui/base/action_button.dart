import 'package:flutter/material.dart';
import 'package:library_web/resources/res_button_style.dart';

class ActionButton extends StatelessWidget {
  final ResButtonStyle style;
  final VoidCallback onTap;
  final String text;
  final bool block;

  const ActionButton({
    Key? key,
    required this.style,
    required this.onTap,
    required this.text,
    this.block = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: block ? double.infinity : null,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(style.backgroundColor),
        ),
        child: Text(
          'Взять',
          style: TextStyle(color: style.textColor),
        ),
      ),
    );
  }
}
