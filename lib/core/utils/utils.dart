import 'package:flutter/material.dart';

enum CustomScreenType { mobile, tablet, desktop }

CustomScreenType getCustomScreenType(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  if (width >= 1100) {
    return CustomScreenType.desktop;
  } else if (width >= 680 && width<1100) {
    return CustomScreenType.tablet;
  } else {
    return CustomScreenType.mobile;
  }
}