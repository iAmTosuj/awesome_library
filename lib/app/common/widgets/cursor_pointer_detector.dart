import 'package:flutter/material.dart';

class CursorPointerDetector extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;

  const CursorPointerDetector(
      {Key? key, required this.child, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: child,
        onTap: onTap,
      ),
    );
  }
}
