import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SubHomeBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.05),
              spreadRadius: 10,
              blurRadius: 25,
            )
          ],
          color: Colors.white,
        ),
        width: double.infinity,
        height: 50,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.location_on, size: 31,),
              Icon(MdiIcons.textBoxMultipleOutline, color: Colors.grey),
              Icon(MdiIcons.packageVariant, color: Colors.grey),
              Icon(MdiIcons.fire, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
