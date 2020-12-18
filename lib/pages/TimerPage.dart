import 'package:flutter/material.dart';
import 'package:my_clock_app/utils/constan.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:my_clock_app/utils/screen/screen_util.dart';

class TimerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil().init(context);
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Stack(
        children: [
          Align(
            alignment: Alignment(0.0, -0.8),
            child: Container(
              width: ScreenUtil.screenWidth,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: '00\n',
                      style: TextStyle(
                          color: const Color(0xffCCCCCC),
                          fontSize: 64 * ScreenUtil.scaleDiagonal,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Segoe UI"
                      ),
                      children: [
                        TextSpan(
                          text: 'H',
                          style: TextStyle(
                              color: const Color(0xffCCCCCC),
                              fontSize: 18 * ScreenUtil.scaleDiagonal,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Segoe UI"
                          ),
                        )
                      ]
                    ),
                  ),
                  Text(':', style: TextStyle(
                      color: const Color(0xffCCCCCC),
                      fontSize: 54 * ScreenUtil.scaleDiagonal,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Segoe UI"
                  ),),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: '00\n',
                        style: TextStyle(
                            color: const Color(0xffCCCCCC),
                            fontSize: 64 * ScreenUtil.scaleDiagonal,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Segoe UI"
                        ),
                        children: [
                          TextSpan(
                            text: 'M',
                            style: TextStyle(
                                color: const Color(0xffCCCCCC),
                                fontSize: 18 * ScreenUtil.scaleDiagonal,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Segoe UI"
                            ),
                          )
                        ]
                    ),
                  ),
                  Text(':', style: TextStyle(
                      color: const Color(0xffCCCCCC),
                      fontSize: 54 * ScreenUtil.scaleDiagonal,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Segoe UI"
                  ),),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: '00\n',
                        style: TextStyle(
                            color: const Color(0xffCCCCCC),
                            fontSize: 64 * ScreenUtil.scaleDiagonal,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Segoe UI"
                        ),
                        children: [
                          TextSpan(
                            text: 'S',
                            style: TextStyle(
                                color: const Color(0xffCCCCCC),
                                fontSize: 18 * ScreenUtil.scaleDiagonal,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Segoe UI"
                            ),
                          )
                        ]
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.5),
            child: SvgPicture.string(SvgAssets.icNumpad,
                allowDrawingOutsideViewBox: true,
                height: 300 * ScreenUtil.scaleDiagonal),
          )
        ],
      ),
    );
  }
}
