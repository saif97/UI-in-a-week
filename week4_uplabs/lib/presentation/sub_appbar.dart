import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week4_uplabs/application/utils.dart';

Color colorsPurple = Color(0xFF3930D8);

class SubAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getScreenSize(context).height*.06,
      child: Row(
        children: <Widget>[
          Image.asset('assets/logo.png'),
          _search(),
          FlatButton(
            onPressed: () {},
            child: Text('BROWSE PREMIUM'),
            color: colorsPurple.withOpacity(.3),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
          _PopupMenu(),
          Spacer(),
          FlatButton(
            onPressed: () {},
            child: Text(
              'GO PREMIUM',
              style: TextStyle(color: Colors.white),
            ),
            color: colorsPurple,
          ),
          FlatButton(onPressed: () {}, child: Text('Challenges')),
          FlatButton(onPressed: () {}, child: Text('Upload')),
          FlatButton(onPressed: () {}, child: Text('Login')),
        ],
      ),
    );
  }
}

class _search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 200,
      child: TextField(
        decoration: InputDecoration(icon: Icon(Icons.search), labelText: 'Search'),
      ),
    );
  }
}

class _PopupMenu extends StatelessWidget {
  const _PopupMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => [
        PopupMenuItem(child: Text('User Rankings')),
        PopupMenuItem(child: Text('Sell With Us')),
        PopupMenuItem(child: Text('Stories')),
        PopupMenuItem(child: Text('About')),
        PopupMenuItem(child: Text('Contact Us')),
      ],
    );
  }
}
