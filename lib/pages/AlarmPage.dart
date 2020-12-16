import 'package:flutter/material.dart';
import 'package:my_clock_app/widgets/button_widget.dart';
import 'package:my_clock_app/utils/screen/screen_util.dart';

class AlarmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil().init(context);
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: WidgetRaisedButton(
                function: () {},
                color: Theme.of(context).backgroundColor,
                child: Text(
                  "+ ADD NEW",
                  style: TextStyle(
                      fontFamily: "Segoe UI",
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff2680EB),
                      fontSize: 16 * ScreenUtil.scaleDiagonal),
                ),
                width: 384 * ScreenUtil.scaleDiagonal,
                height: 60 * ScreenUtil.scaleDiagonal,
                radius: 30,
                border: Border.all(color: const Color(0xffE2EAED), width: 1.0),
                shadow: [
                  BoxShadow(
                    blurRadius: 6.0,
                    offset: const Offset(0.0, 6.0),
                    color: const Color(0xffE2EAED),
                  )
                ],
                margin: const EdgeInsets.symmetric(horizontal: 15)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: ScreenUtil.screenHeight * 0.65,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                itemBuilder: (context, index) {
                  return SwitchListTile.adaptive(
                    value: true,
                    onChanged: (v) {},
                    title: Text(
                      "6:50 AM",
                      style: TextStyle(
                        color: const Color(0xff1F2426),
                        fontSize: 24 * ScreenUtil.scaleDiagonal,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Segoe UI",
                      ),
                    ),
                    subtitle: Text(
                      "Every Day",
                      style: TextStyle(
                        color: const Color(0xff1F2426),
                        fontSize: 14 * ScreenUtil.scaleDiagonal,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Segoe UI",
                      ),
                    ),
                    activeColor: const Color(0xffE2EAED),
                    activeTrackColor: const Color(0xff2680EB),
                    controlAffinity: ListTileControlAffinity.trailing,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
