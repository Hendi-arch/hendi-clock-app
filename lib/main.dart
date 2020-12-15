import 'utils/utils.dart';
import 'pages/home_page.dart';
import 'providers/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart'
    show ChangeNotifierProvider, MultiProvider, Consumer;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// initialize sharedPreferences
  prefs = await SharedPreferences.getInstance();

  /// running app
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PreferenceAndSettingsNotifier>(
            create: (context) => PreferenceAndSettingsNotifier()..refresh())
      ],
      child: Consumer<PreferenceAndSettingsNotifier>(
        builder: (context, value, child) => MaterialApp(
            home: HomePage(),
            title: "My Clock App",
            theme: value.themeData(),
            debugShowCheckedModeBanner: false),
      ),
    );
  }
}
