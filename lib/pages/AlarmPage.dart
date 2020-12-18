import 'package:flutter/material.dart';
import 'package:my_clock_app/models/alarm_model.dart';
import 'package:provider/provider.dart' show Provider;
import 'package:my_clock_app/widgets/button_widget.dart';
import 'package:my_clock_app/providers/app_provider.dart';
import 'package:my_clock_app/utils/screen/screen_util.dart';

class AlarmPage extends StatefulWidget {
  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  final List<AlarmModel> _listAlarmModel = [
    AlarmModel(time: '04:30', description: 'Sholat subuh 🙏'),
    AlarmModel(time: '03:00', description: 'Sahur 🍲'),
    AlarmModel(time: '14:00', description: 'Berangkat ke Amerika ✈️')
  ];
  final _listBool = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    ScreenUtil().init(context);
    var _notifier = Provider.of<PreferenceAndSettingsNotifier>(context);
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Stack(
        children: [
          Align(
            alignment: Alignment(0.0, -0.9),
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
                    color: _notifier.themeState()
                        ? const Color(0xffE2EAED)
                        : const Color(0xff3A454A),
                  )
                ],
                margin: const EdgeInsets.symmetric(horizontal: 15)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: ScreenUtil.screenHeight * 0.65,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                itemCount: _listAlarmModel.length,
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: SwitchListTile.adaptive(
                        value: _listBool[index],
                        title: Text(
                          _listAlarmModel[index].time,
                          style: TextStyle(
                            color: _listBool[index] && _notifier.themeState()
                                ? const Color(0xff1F2426)
                                : _listBool[index] && !_notifier.themeState()
                                    ? const Color(0xffFFFFFF)
                                    : !_listBool[index] &&
                                            _notifier.themeState()
                                        ? const Color(0xffCCCCCC)
                                        : const Color(0xff3A454A),
                            fontSize: 24 * ScreenUtil.scaleDiagonal,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Segoe UI",
                          ),
                        ),
                        subtitle: Text(
                          _listAlarmModel[index].description,
                          style: TextStyle(
                            color: _listBool[index] && _notifier.themeState()
                                ? const Color(0xff1F2426)
                                : _listBool[index] && !_notifier.themeState()
                                ? const Color(0xffFFFFFF)
                                : !_listBool[index] &&
                                _notifier.themeState()
                                ? const Color(0xffCCCCCC)
                                : const Color(0xff3A454A),
                            fontSize: 15 * ScreenUtil.scaleDiagonal,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Segoe UI",
                          ),
                        ),
                        activeColor: const Color(0xff2680EB),
                        controlAffinity: ListTileControlAffinity.trailing,
                        onChanged: (v) => setState(() => _listBool[index] = v)),
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
