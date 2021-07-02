import 'package:flutter/material.dart';

import 'presentation/consts/colors.dart';
import 'presentation/screen_home/screen_home.dart';
import 'presentation/utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = getTextTheme(context);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          accentColor: accentColor,
          scaffoldBackgroundColor: Colors.white.withOpacity(.9),
          textTheme: textTheme.copyWith(
              caption: textTheme.caption.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              subtitle1: textTheme.subtitle1.copyWith(fontWeight: FontWeight.bold))),
      home: ScreenHome(),
    );
  }
}
