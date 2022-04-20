import 'dart:ui';

import 'package:library_web/resources/res_colors.dart';

class ResButtonStyle {
  final Color backgroundColor;
  final Color textColor;

  ResButtonStyle._({
    required this.backgroundColor,
    required this.textColor,
  });

  static final primary = ResButtonStyle._(
    backgroundColor: ResColors.bluePrimary,
    textColor: ResColors.white,
  );

  static final secondary = ResButtonStyle._(
    backgroundColor: ResColors.blueSecondary,
    textColor: ResColors.bluePrimary,
  );
}
