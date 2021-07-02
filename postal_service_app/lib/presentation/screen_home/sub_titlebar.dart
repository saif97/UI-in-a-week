import 'package:flutter/material.dart';

import '../consts/colors.dart';

class SubHomeTitleBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _Circle(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.menu, size: 35),
              Text('Parcel Tracking'),
              Icon(Icons.search, size: 35),
            ],
          ),
        ),
      ],
    );
  }
}

class _Circle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.3,
      child: Transform.translate(
        offset: Offset(0, -.6 * MediaQuery.of(context).size.width),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: accentColor,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
