import 'package:flutter/material.dart';
import 'package:my_clock_app/utils/constan.dart';
import 'package:provider/provider.dart' show Consumer;
import 'package:my_clock_app/providers/app_provider.dart';
import 'package:my_clock_app/utils/screen/screen_util.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

class ClockWidget extends StatelessWidget {
  final double width;
  final double height;

  const ClockWidget({Key key, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PreferenceAndSettingsNotifier>(
      builder: (context, value, child) => Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 230 * ScreenUtil.scaleDiagonal,
            height: 230 * ScreenUtil.scaleDiagonal,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  blurRadius: 40,
                  offset: const Offset(0.0, 5.0),
                  color: value.themeState()
                      ? const Color(0xffE2EAED)
                      : const Color(0xff000000),
                )
              ],
            ),
          ),
          SvgPicture.string(
            value.themeState()
                ? SvgAssets.icBigClockLight
                : SvgAssets.icBigClockDark,
            width: width,
            height: height,
            allowDrawingOutsideViewBox: true,
          ),
        ],
      ),
    );
  }
}
