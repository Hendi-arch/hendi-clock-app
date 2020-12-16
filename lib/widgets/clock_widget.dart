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
        children: [
          Align(
            alignment: Alignment(0.0, -0.85),
            child: Container(
              width: 230 * ScreenUtil.scaleDiagonal,
              height: 230 * ScreenUtil.scaleDiagonal,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 30,
                    offset: const Offset(0.0, 30),
                    color: const Color(0xffE2EAED),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, -1.0),
            child: SvgPicture.string(
              value.themeState()
                  ? SvgAssets.icBigClockLight
                  : SvgAssets.icBigClockDark,
              width: width,
              height: height,
              allowDrawingOutsideViewBox: true,
            ),
          ),
        ],
      ),
    );
  }
}
