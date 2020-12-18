import 'package:flutter/material.dart';
import 'package:my_clock_app/utils/constan.dart';
import 'package:provider/provider.dart' show Consumer;
import 'package:my_clock_app/providers/app_provider.dart';
import 'package:my_clock_app/utils/screen/screen_util.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

class StopWatchWidget extends StatelessWidget {
  final double width;
  final double height;
  final double widthFAB;
  final double heightFAB;

  const StopWatchWidget(
      {Key key, this.width, this.height, this.widthFAB, this.heightFAB})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PreferenceAndSettingsNotifier>(
      builder: (context, value, child) => Stack(
        children: [
          Align(
            // shadow top
            alignment: Alignment(0.0, -0.85),
            child: Container(
              width: 230 * ScreenUtil.scaleDiagonal,
              height: 230 * ScreenUtil.scaleDiagonal,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
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
                  ? SvgAssets.icStopWatchLight
                  : SvgAssets.icStopWatchDark,
              width: width,
              height: height,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Align(
            // shadow bottom
            alignment: Alignment(0.0, 0.42),
            child: Container(
              width: 80 * ScreenUtil.scaleDiagonal,
              height: 80 * ScreenUtil.scaleDiagonal,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 6,
                    offset: const Offset(0.0, 6.0),
                    color: const Color(0xffE2EAED),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.45),
            child: SvgPicture.string(
              value.themeState()
                  ? SvgAssets.icFABButtonLight
                  : SvgAssets.icFABButtonDark,
              width: widthFAB,
              height: heightFAB,
              allowDrawingOutsideViewBox: true,
            ),
          )
        ],
      ),
    );
  }
}
