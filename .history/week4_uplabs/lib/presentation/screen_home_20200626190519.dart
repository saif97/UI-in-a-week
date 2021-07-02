import 'package:flutter/material.dart';

import '../application/utils.dart';
import 'sub_appbar.dart';
import 'sub_home_sidebar.dart';

class ScreenHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SubAppBar(),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: getScreenSize(context).height * .94,
                  width: 500,
                  color: Colors.grey.withOpacity(.1),
                  child: Stack(alignment: Alignment.center,
                    children: [Image.asset('assets/main.png', height: 450)],
                  ),
                ),
              ),
              SubHomeSidebar()
            ],
          )
        ],
      ),
    );
  }
}
