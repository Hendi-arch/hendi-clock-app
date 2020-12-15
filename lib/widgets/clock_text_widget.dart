import 'package:flutter/material.dart';
import 'package:my_clock_app/providers/app_provider.dart';
import 'package:my_clock_app/utils/screen/screen_util.dart';
import 'package:provider/provider.dart' show Consumer;

class ClockTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil().init(context);
    return Consumer<PreferenceAndSettingsNotifier>(
      builder: (context, value, child) => RichText(
          text: TextSpan(
              text: "Current Timezone - IN\n",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontFamily: "Segoe UI",
                  fontSize: 14 * ScreenUtil.scaleDiagonal,
                  color: const Color(0xff1F2426).withOpacity(0.56)),
              children: <TextSpan>[
                TextSpan(
                  text: "4:14",
                  style: TextStyle(
                      fontFamily: "Segoe UI",
                      fontWeight: FontWeight.w600,
                      fontSize: 48 * ScreenUtil.scaleDiagonal,
                      color: value.themeState() ? const Color(0xff1F2426) : const Color(0xffFFFFFF)),
                ),
                TextSpan(
                  text: "PM",
                  style: TextStyle(
                      fontFamily: "Segoe UI",
                      fontWeight: FontWeight.w600,
                      fontSize: 24 * ScreenUtil.scaleDiagonal,
                      color: const Color(0xff1F2426).withOpacity(0.56)),
                ),
              ]),
          textAlign: TextAlign.center),
    );
  }
}
