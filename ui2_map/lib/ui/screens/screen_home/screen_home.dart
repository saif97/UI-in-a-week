import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../core/models/hotels.dart';
import '../../../core/utils/util_functions.dart';
import '../../consts/colors.dart';
import '../../consts/values.dart';

class ScreenHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _Main());
  }
}

class _Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(height: 45),
        _SUbAppbar(),
        _SubSearchBar(),
        Expanded(child: _Listing()),
      ],
    );
  }
}

class _SUbAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: sidePadding,
      child: Row(
        children: <Widget>[
          Icon(MdiIcons.gridLarge),
          Expanded(child: Center(child: Text('Welcome', style: getTextTheme(context).headline3))),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Icon(MdiIcons.heartOutline)),
          Icon(MdiIcons.mapMarkerOutline),
        ],
      ),
    );
  }
}

class _SubSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFFF5F2F3),
      padding: sidePadding.add(EdgeInsets.symmetric(vertical: 10)),
      height: 150,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                elevation: 15,
                child: Container(
                  height: 50,
                ),
              )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Card(
                  elevation: 15,
                  shadowColor: themeColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  color: themeColor,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(Icons.search, color: Colors.white, size: 40),
                  ),
                ),
              ),
            ],
          ),
          Container(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Choose Date'),
                    Text(
                      '15 March - 21 March',
                      style: getTextTheme(context).headline6,
                    ),
                  ],
                ),
              ),
              Container(
                width: 1,
                height: 30,
                color: Colors.black.withOpacity(.5),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Number of rooms'),
                  Text('1 Room - 2 Adults', style: getTextTheme(context).headline6),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _Listing extends StatelessWidget {
  const _Listing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('130 hotels found '),
              Spacer(),
              Text('Filter'),
              Icon(MdiIcons.filterOutline, color: themeColor)
            ],
          ),
          Column(children: listHotels.map((hotel) => _HotelCard(hotel)).toList())
        ],
      ),
    );
  }
}

class _HotelCard extends StatelessWidget {
  final Hotel hotel;
  _HotelCard(this.hotel);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(hotel.src),
                CircleAvatar(
                  child: Icon(MdiIcons.heartOutline, color: themeColor),
                )
              ],
            ),
            ListTile(
              title: Text(hotel.name),
            ),
          ],
        ),
      ),
    );
  }
}
