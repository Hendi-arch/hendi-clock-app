import 'package:flutter/material.dart';
import 'package:my_clock_app/utils/constan.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:my_clock_app/utils/screen/screen_util.dart';

class StopWatchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil().init(context);
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SvgPicture.string(SvgAssets.icStopWatch,
                allowDrawingOutsideViewBox: true),
          )
        ],
      ),
    );
  }
}
