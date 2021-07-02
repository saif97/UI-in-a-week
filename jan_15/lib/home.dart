import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC0DFED),
      body: Container(
        child: Column(
          children: [
            _CAppBar(),
            _Header(),
            _Page(),
          ],
        ),
      ),
    );
  }
}

class _Page extends StatelessWidget {
  const _Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
        color: Colors.white,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Culpa non dolore', style: TextStyle(color: Colors.blueAccent)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Laborum qui aliquip laborum sit ea id.',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Laborum qui aliquip laborum sit ea id magna nostrud consectetur.',
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _HoverButton(icon: Icons.code, text: 'Sit dolore aute anim .'),
                _HoverButton(
                    icon: Icons.home, text: 'Ut magna ut aliquip officia officia pariatur .'),
                _HoverButton(icon: Icons.hotel, text: 'Tempor ea quis amet nulla veniam .'),
                _HoverButton(
                    icon: Icons.bedtime, text: 'Culpa dolor consequat sunt sit velit fugiat.'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _HoverButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const _HoverButton({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: RaisedButton(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Row(
            children: <Widget>[
              Icon(icon),
              Container(width: 15),
              Container(
                child: Text(text),
                width: 150,
              ),
            ],
          ),
        ),
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        hoverElevation: 20,
        color: Colors.white,
        elevation: 0,
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
      height: 500,
      child: Stack(
        children: [
          _CLeft(),
          _Image(),
          _Right(),
          _MidText(),
        ],
      ),
    );
  }
}

class _MidText extends StatelessWidget {
  const _MidText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0, 1.5),
      child: Container(
        color: Colors.white,
        width: 150,
        height: 120,
        child: Column(
          children: <Widget>[
            Container(height: 10),
            Text('Judith Henry', style: Theme.of(context).textTheme.headline6),
            Text('Client dep 2'),
          ],
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0, 1.5),
      child: Container(
        child: Image.asset('asset/woman.png', width: 400),
      ),
    );
  }
}

class _Right extends StatelessWidget {
  const _Right({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 250,
        child: Text(
          'Voluptate eu enim aliqua reprehenderit.Tempor sint elit nisi elit. Magna sunt velit sit aute reprehenderit nulla occaecat irure id non tempor proident ea voluptate.',
        ),
      ),
    );
  }
}

class _CLeft extends StatelessWidget {
  const _CLeft({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50),
      alignment: Alignment.centerLeft,
      width: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('- Pour les TPE', style: TextStyle(color: Colors.blueAccent)),
          Text(
            'Minim dolore commodo Lorem qui cupidatat.',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
              'Ad velit occaecat ullamco consectetur laborum adipisicing ad cillum adipisicing consectetur elit.'),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text('Contact'),
                onPressed: () {},
                color: Colors.blueAccent,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
              Container(width: 10),
              Text('Des'),
              Text('69', style: Theme.of(context).textTheme.headline2),
              Text('/month'),
            ],
          )
        ],
      ),
    );
  }
}

class _CAppBar extends StatelessWidget {
  const _CAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
        child: Row(
          children: <Widget>[
            // CircleAvatar(child: Icon(Icons.check,color: Colors.white),maxRadius: 10),
            Icon(Icons.check),
            Text("Dougs", style: Theme.of(context).textTheme.headline5),
            Container(width: 20),
            Text('0428296262'),
            Spacer(),
            _CDropDown(txt: 'Services'),
            _CDropDown(txt: 'Functionalities'),
            _CDropDown(txt: 'Tarifs'),
            _CDropDown(txt: 'Blog'),
            Spacer(),
            Text('Se Connecter'),
            Container(width: 10),
            OutlineButton(
              color: Colors.red,
              highlightedBorderColor: Colors.blueAccent,
              textColor: Colors.blueAccent,
              child: Text('Subscribe'),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Colors.blueAccent)),
            )
          ],
        ));
  }
}

class _CDropDown extends StatelessWidget {
  final String txt;
  const _CDropDown({Key key, this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: DropdownButton(
        items: [DropdownMenuItem(child: Text(''))],
        hint: Text(txt),
        onChanged: (value) {},
      ),
    );
  }
}
