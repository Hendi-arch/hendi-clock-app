import 'package:flutter/material.dart';
import 'package:my_clock_app/widgets/clock_widget.dart';
import 'package:my_clock_app/widgets/button_widget.dart';
import 'package:my_clock_app/models/world_clock_model.dart';
import 'package:my_clock_app/utils/screen/screen_util.dart';
import 'package:my_clock_app/widgets/clock_text_widget.dart';

class WorldPage extends StatelessWidget {
  final List<WorldClockModel> _listWorldClockModel = [
    WorldClockModel(city: 'Jakarta', time: '16:14', date: 'Fri, 12/20'),
    WorldClockModel(city: 'Abu Dhabi', time: '13:14', date: 'Fri, 12/20'),
    WorldClockModel(city: 'Berlin', time: '10:14', date: 'Fri, 12/20'),
    WorldClockModel(city: 'Dublin', time: '09:14', date: 'Fri, 12/20'),
    WorldClockModel(city: 'Algiers', time: '10:14', date: 'Fri, 12/20'),
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil().init(context);
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Stack(
        children: [
          ClockWidget(
              width: 350 * ScreenUtil.scaleDiagonal,
              height: 350 * ScreenUtil.scaleDiagonal),
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
                itemCount: _listWorldClockModel.length,
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return WidgetRaisedButton(
                      function: () {},
                      color: Theme.of(context).backgroundColor,
                      child: ListTile(
                        title: Text(
                          _listWorldClockModel[index].city,
                          style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff1F2426),
                              fontSize: 14 * ScreenUtil.scaleDiagonal),
                        ),
                        subtitle: Text(
                          _listWorldClockModel[index].date,
                          style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff1F2426),
                              fontSize: 10 * ScreenUtil.scaleDiagonal),
                        ),
                        trailing: Text(
                          _listWorldClockModel[index].time,
                          style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.bold,
                              color: const Color(0xff1F2426),
                              fontSize: 16 * ScreenUtil.scaleDiagonal),
                        ),
                      ),
                      width: 384 * ScreenUtil.scaleDiagonal,
                      height: 60 * ScreenUtil.scaleDiagonal,
                      radius: 30,
                      border: Border.all(
                          color: const Color(0xffE2EAED), width: 1.0),
                      margin: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 10));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
