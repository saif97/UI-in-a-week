import 'package:flutter/material.dart';

import '../consts/colors.dart';
import 'sub_home_bottomNavBar.dart';
import 'sub_home_listing.dart';
import 'sub_titlebar.dart';

class ScreenHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: FloatingActionButton(
          elevation: 10,
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: accentColor,
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            SubHomeTitleBar(),
            SubHomeListing(),
            SubHomeBottomNavBar(),
          ],
        ),
      ),
    );
  }
}
