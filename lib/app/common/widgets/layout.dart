import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_web/app/common/resources/res_colors.dart';
import 'package:library_web/app/common/resources/ui_icon.dart';
import 'package:library_web/app/common/router/route_info.dart';
import 'package:library_web/app/common/widgets/cursor_pointer_detector.dart';

class Layout extends StatelessWidget {
  final Widget child;

  const Layout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ResColors.bgGrey,
        appBar: AppBar(
          toolbarHeight: 42,
          leading: GoRouter.of(context).location != RouteInfo.main.path
              ? DefaultTextStyle(
                  style: const TextStyle(color: ResColors.bluePrimary),
                  child: IconButton(
                    icon: const Icon(
                      UiIcon.arrow_left,
                      color: ResColors.bluePrimary,
                    ),
                    onPressed: () => GoRouter.of(context).pop(),
                  ),
                )
              : null,
          actions: [
            CursorPointerDetector(
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
                child: Text(
                  'Каталог',
                  style: TextStyle(color: ResColors.bluePrimary),
                ),
              ),
              onTap: () => GoRouter.of(context).goNamed(RouteInfo.main.name),
            ),
            const SizedBox(
              width: 24,
            ),
            CursorPointerDetector(
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
                child: Text(
                  'Мои книги',
                  style: TextStyle(color: ResColors.bluePrimary),
                ),
              ),
              onTap: () => GoRouter.of(context).goNamed(RouteInfo.myBooks.name),
            ),
            const SizedBox(
              width: 24,
            ),
            const CircleAvatar(
              backgroundColor: ResColors.bluePrimary,
            ),
            const SizedBox(
              width: 24,
            ),
          ],
        ),
        body: SafeArea(
            child: Center(
                child: Container(
                    constraints: const BoxConstraints(maxWidth: 1000),
                    child: child))));
  }
}
