import 'dart:math' as math;
import 'package:flutter/material.dart'
    show MediaQuery, MediaQueryData, BuildContext;

class ScreenUtil {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double screenDiagonal;
  static double scaleDiagonal;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    screenDiagonal =
        math.sqrt((screenHeight * screenHeight) + (screenWidth * screenHeight));
    scaleDiagonal = screenDiagonal / (math.sqrt((414 * 414) + (896 * 896)));
  }
}
