import 'package:flutter/material.dart';
import 'package:my_clock_app/utils/screen/screen_util.dart';
import 'package:my_clock_app/widgets/stop_watch_widget.dart';

class StopWatchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil().init(context);
    return Container(
      color: Theme.of(context).backgroundColor,
      child: StopWatchWidget(
          width: 350 * ScreenUtil.scaleDiagonal,
          height: 350 * ScreenUtil.scaleDiagonal,
          widthFAB: 96 * ScreenUtil.scaleDiagonal,
          heightFAB: 96 * ScreenUtil.scaleDiagonal),
    );
  }
}
