import 'AlarmPage.dart';
import 'WorldPage.dart';
import 'package:flutter/material.dart';
import 'package:my_clock_app/utils/constan.dart';
import 'package:my_clock_app/pages/TimerPage.dart';
import 'package:provider/provider.dart' show Provider;
import 'package:my_clock_app/pages/StopWatchPage.dart';
import 'package:my_clock_app/providers/app_provider.dart';
import 'package:my_clock_app/utils/screen/screen_util.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomePage extends StatelessWidget {
  final _tabController = PersistentTabController(initialIndex: 0);

  PersistentBottomNavBarItem _buildItems(BuildContext context,
      {String title,
      String icon,
      ValueKey<int> keyIndex,
      PreferenceAndSettingsNotifier notifier}) {
    return PersistentBottomNavBarItem(
        title: (title),
        textStyle: TextStyle(
            fontFamily: "Segoe UI",
            fontWeight: FontWeight.w600,
            fontSize: 12 * ScreenUtil.scaleDiagonal),
        icon: SvgPicture.string(icon,
            key: keyIndex,
            color: notifier.itemIndex == keyIndex.value
                ? const Color(0xff2680EB)
                : const Color(0xffCCCCCC),
            allowDrawingOutsideViewBox: true,
            height: 24 * ScreenUtil.scaleDiagonal,
            width: 24 * ScreenUtil.scaleDiagonal),
        activeColor: Colors.blueGrey,
        activeColorAlternate:
            notifier.themeState() ? const Color(0xff1F2426) : Colors.white,
        inactiveColor: Theme.of(context).backgroundColor);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil().init(context);
    var _notifier = Provider.of<PreferenceAndSettingsNotifier>(context);
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          flexibleSpace: Padding(
            padding: EdgeInsets.only(
                top: ScreenUtil.paddingTop + 10, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Clock",
                    style: TextStyle(
                        fontFamily: "Segoe UI",
                        fontWeight: FontWeight.w600,
                        fontSize: 18 * ScreenUtil.scaleDiagonal)),
                GestureDetector(
                  onTap: () {
                    _notifier
                        .changeTheme(_notifier.themeState() ? false : true);
                  },
                  child: SvgPicture.string(SvgAssets.icDarkLightMode,
                      allowDrawingOutsideViewBox: true,
                      width: 24 * ScreenUtil.scaleDiagonal,
                      height: 24 * ScreenUtil.scaleDiagonal),
                )
              ],
            ),
          )),
      body: PersistentTabView(
        context,
        screens: [AlarmPage(), WorldPage(), TimerPage(), StopWatchPage()],
        items: [
          _buildItems(context,
              title: "Alarm",
              icon: SvgAssets.icNavAlarm,
              keyIndex: ValueKey<int>(0),
              notifier: _notifier),
          _buildItems(context,
              title: "World",
              icon: SvgAssets.icNavWorld,
              keyIndex: ValueKey<int>(1),
              notifier: _notifier),
          _buildItems(context,
              title: "Timer",
              icon: SvgAssets.icNavTimer,
              keyIndex: ValueKey<int>(2),
              notifier: _notifier),
          _buildItems(context,
              title: "Stopwatch",
              icon: SvgAssets.icNavStopWatch,
              keyIndex: ValueKey<int>(3),
              notifier: _notifier)
        ],
        onItemSelected: (index) {
          _notifier.itemIndex = index;
        },
        stateManagement: true,
        confineInSafeArea: true,
        controller: _tabController,
        resizeToAvoidBottomInset: true,
        navBarStyle: NavBarStyle.style9,
        handleAndroidBackButtonPress: true,
        popAllScreensOnTapOfSelectedTab: true,
        hideNavigationBarWhenKeyboardShows: true,
        popActionScreens: PopActionScreensType.all,
        backgroundColor: Theme.of(context).backgroundColor,
        itemAnimationProperties: ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          curve: Curves.ease,
          duration: const Duration(milliseconds: 200),
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          curve: Curves.ease,
          animateTabTransition: true,
          duration: const Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
