import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_app/pages/detail_page.dart';
import 'package:travel_app/pages/intro_page.dart';
import 'package:travel_app/pages/second_page.dart';

import 'pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences _prefs1 = await SharedPreferences.getInstance();
  bool showIntro = _prefs1.getBool("showIntro") ?? true;

  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: [Locale('en', 'US'), Locale('uz', 'UZ')],
      path: 'assets/translations',
      fallbackLocale: Locale('en', 'US'),
      child: MyApp(
        showIntro: showIntro,
      )));
}

class MyApp extends StatelessWidget {
  final bool showIntro;

  const MyApp({required this.showIntro});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: SecondPage(),
      // home: showIntro ? IntroPage() : HomePage(), //? true : false
      routes: {
        HomePage.id: (context) => HomePage(),
        IntroPage.id: (context) => IntroPage(),
        DetailPage.id: (context) => DetailPage(),
      },
    );
  }
}
