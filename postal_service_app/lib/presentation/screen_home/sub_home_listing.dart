import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../consts/colors.dart';
import '../utils.dart';

class SubHomeListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15).copyWith(top: 45),
      child: Column(
        children: <Widget>[
          _Card1(),
          Container(height: 20),
          _Card2(),
        ],
      ),
    );
  }
}

class _Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 300,
      child: Card(
        elevation: 10,
        child: Row(
          children: <Widget>[
            _Card1Col1(),
            _Card1Col2(),
          ],
        ),
      ),
    );
  }
}

class _Card1Col1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('My Parcel', style: getTextTheme(context).subtitle1),
          // Container(height: 3, width: 55, color: Colors.grey),
          Text('NUMBER', style: getTextTheme(context).caption),
          Text('48587521667894'),
          Container(height: 30),
          Text('WAITING FOR COLLECTION', style: getTextTheme(context).caption),
          Text('Mo|19.06.13|11:30'),
          Container(height: 30),
          Text('Remaining', style: getTextTheme(context).caption),
          Text('16 Hours and 30 minutes'),
          Container(height: 10),
          LinearPercentIndicator(
            width: 150,
            progressColor: accentColor,
            lineHeight: 10,
            backgroundColor: Colors.grey.withOpacity(.2),
            percent: .5,
          ),
          Container(height: 30),
          Text('Status', style: getTextTheme(context).caption),
          Text(
            'For Pickup',
            style: getTextTheme(context).headline5.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class _Card1Col2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset('assets/p1.png', width: 120, height: 120),
          Text('Reception Venue', style: getTextTheme(context).caption),
          Text('KAT08A'),
          Container(height: 30),
          Text('Opening Hours', style: getTextTheme(context).caption),
          Text('Mo-FRI|11 - 8PM'),
          Container(height: 10),
          Text('Sat-FRI|11 - 8PM'),
        ],
      ),
    );
  }
}

class _Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Card(
        elevation: 10,
        child: Row(
          children: <Widget>[
            _Card2Col1(),
            _Card2Col2()
          ],
        ),
      ),
    );
  }
}

class _Card2Col1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Parcel Observed', style: getTextTheme(context).subtitle1),
          Text('Name', style: getTextTheme(context).caption),
          Text('Birthday gift'),
          Text('Status', style: getTextTheme(context).caption),
          Text(
            'On the way',
            style: getTextTheme(context).headline5.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class _Card2Col2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset('assets/p2.png', width: 120, height: 120),
        ],
      ),
    );
  }
}