import 'package:flutter/material.dart';
import 'package:my_clock_app/widgets/button_widget.dart';
import 'package:my_clock_app/widgets/clock_widget.dart';
import 'package:my_clock_app/utils/screen/screen_util.dart';
import 'package:my_clock_app/widgets/clock_text_widget.dart';

class AlarmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil().init(context);
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Stack(
        children: [
          Align(
              alignment: Alignment(0.0, -1.0),
              child: ClockWidget(
                  width: 350 * ScreenUtil.scaleDiagonal,
                  height: 350 * ScreenUtil.scaleDiagonal)),
          Align(alignment: Alignment(0.0, 0.1), child: ClockTextWidget()),
          Align(
            alignment: Alignment(0.0, 0.42),
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
                margin: const EdgeInsets.symmetric(horizontal: 15)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 160 * ScreenUtil.scaleDiagonal,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return WidgetRaisedButton(
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
                      margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
