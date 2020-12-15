import 'dart:math' as math;
import 'package:flutter/material.dart'
    show MediaQuery, MediaQueryData, BuildContext;

class ScreenUtil {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double screenDiagonal;
  static double scaleDiagonal;
  static double paddingTop;
  static double paddingBottom;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    paddingBottom = _mediaQueryData.padding.bottom;
    paddingTop = _mediaQueryData.padding.top;
    screenDiagonal =
        math.sqrt((screenHeight * screenHeight) + (screenWidth * screenHeight));
    scaleDiagonal = screenDiagonal / (math.sqrt((414 * 414) + (896 * 896)));
  }
}
