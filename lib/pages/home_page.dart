import 'package:flutter/material.dart';
import 'package:my_clock_app/utils/screen/screen_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil().init(context);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
          title: Text("App Bar",
              style: TextStyle(
                  color: Colors.red,
                  fontFamily: "Segoe UI",
                  fontWeight: FontWeight.w600,
                  fontSize: 18 * ScreenUtil.scaleDiagonal))),
      body: Center(
        child: Text("Hendi Noviansyah",
            style: TextStyle(
                color: Colors.red,
                fontFamily: "Segoe UI",
                fontWeight: FontWeight.w600,
                fontSize: 18 * ScreenUtil.scaleDiagonal)),
      ),
    );
  }
}
