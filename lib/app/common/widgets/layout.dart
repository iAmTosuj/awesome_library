import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:library_web/app/common/resources/styles/res_colors.dart';
import 'package:library_web/app/common/resources/styles/ui_icon.dart';
import 'package:library_web/app/common/router/route_info.dart';
import 'package:library_web/app/common/widgets/cursor_pointer_detector.dart';

class Layout extends StatelessWidget {
  final Widget child;

  const Layout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: разобраться почему не работает PopupMenuButton
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
        appBarTheme: AppBarTheme(
            backgroundColor: ResColors.white,
            titleTextStyle: Theme.of(context).textTheme.headline5?.copyWith(
                  color: ResColors.text,
                ),
            iconTheme: const IconThemeData(color: ResColors.textSecondary)),
      ),
      home: Scaffold(
          backgroundColor: ResColors.bgGrey,
          appBar: AppBar(
            toolbarHeight: 42,
            elevation: 1,
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
                onTap: () =>
                    GoRouter.of(context).goNamed(RouteInfo.myBooks.name),
              ),
              const SizedBox(
                width: 24,
              ),
              PopupMenuButton<Text>(
                  offset: const Offset(0, 50),
                  itemBuilder: (context) => <PopupMenuEntry<Text>>[
                        PopupMenuItem<Text>(
                          enabled: false,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Анастасия Копаткина',
                                style: TextStyle(color: ResColors.text),
                              ),
                              Text('кто-то там')
                            ],
                          ),
                        ),
                        PopupMenuItem<Text>(
                          child: Row(
                            children: const [
                              Icon(UiIcon.excel),
                              Spacer(),
                              Text('Выйти')
                            ],
                          ),
                        ),
                      ]),
              const SizedBox(
                width: 24,
              ),
            ],
          ),
          body: SafeArea(child: Center(child: child))),
    );
  }
}
