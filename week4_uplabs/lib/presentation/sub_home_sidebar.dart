import 'package:flutter/material.dart';

import '../application/utils.dart';
import 'sub_appbar.dart';

class SubHomeSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: getScreenSize(context).height * .94,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  leading: Image.asset('assets/lion.png'),
                  title: Text('Start Up Website Banner Concept'),
                  subtitle: Text('by Made By Sparky'),
                ),
                Container(height: 10),
                Text('Start Up Website Banner Concept'),
                _Content1(),
                _Content2(),
                _Content3(),
                _Content4(),
                _Content5(),
                _Content6(),
                ListTile(
                  leading: FlutterLogo(),
                  title: Text('QQCucumber'),
                  subtitle: Text('Great landing page banner. Looking forward to seeing more.'),
                ),
                // Container(height: 50),
                Divider(),
                ListTile(
                  leading: FlutterLogo(),
                  title: Text('Saif'),
                  subtitle: Text('Great landing page banner. Looking forward to seeing more.'),
                ),
                ListTile(
                  leading: FlutterLogo(),
                  title: Text('Potato'),
                  subtitle: Text('Great landing page banner. Looking forward to seeing more.'),
                )
              ],
            ),
          ),
          Container(
            height: 70,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                offset: Offset(10, -5),
                color: Colors.black.withOpacity(.1),
                spreadRadius: 5,
                blurRadius: 20
              )
            ]),
            child: Container(
              color: Colors.white,
              child: ListTile(
                leading: Image.asset('assets/lion.png'),
                title: Text('Start Up Website Banner Concept'),
                subtitle: Text('by Made By Sparky'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Content6 extends StatelessWidget {
  const _Content6({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 40),
      child: Card(child: Image.asset('assets/sideImage.gif')),
    );
  }
}

class _Content5 extends StatelessWidget {
  const _Content5({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: FlatButton(
        hoverColor: colorsPurple,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: colorsPurple), borderRadius: BorderRadius.circular(5)),

        onPressed: () {},
        // color: Colors.green,
        child: Text('Download Now', style: TextStyle(color: colorsPurple)),
      ),
    );
  }
}

class _Content4 extends StatelessWidget {
  const _Content4({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: FlatButton(
        onPressed: () {},
        color: Colors.green,
        child: Text('Download Now', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

class _Content3 extends StatelessWidget {
  const _Content3({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('✅ personal project only'),
          Text('✅ Future updates'),
          Text('ℹ     Licence Details'),
        ],
      ),
    );
  }
}

class _Content2 extends StatelessWidget {
  const _Content2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('FREE', style: getTextTheme(context).headline4.copyWith(color: Colors.black)),
          Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: DropdownButton(
                underline: Container(),
                onChanged: (value) {},
                items: [
                  DropdownMenuItem(child: Text('Personal Licence')),
                  DropdownMenuItem(child: Text('Paid')),
                  DropdownMenuItem(child: Text('Open source')),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _Content1 extends StatelessWidget {
  const _Content1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text('Made and 342 upvoted'),
          ),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text('SAVE'),
          hoverColor: colorsPurple,
        ),
        Container(width: 15),
        RaisedButton(
          onPressed: () {},
          child: Text('👍 255'),
          hoverColor: colorsPurple,
        )
      ],
    );
  }
}
