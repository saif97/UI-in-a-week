import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Color THEME_COLOR = Color(0xff013580);

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.black));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        primaryIconTheme: IconThemeData(color: Colors.black),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: _Main(),
    );
  }
}

class _Main extends StatelessWidget {
  const _Main({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // This is all you need!
        selectedItemColor: Colors.white,
        backgroundColor: THEME_COLOR,
        unselectedItemColor: Colors.white54,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.location_city), label: 'Location'),
          BottomNavigationBarItem(icon: Icon(Icons.change_history), label: 'Trip'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: Screen_search(),
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(icon: Icon(Icons.mic), onPressed: () {}),
          IconButton(icon: Icon(Icons.notification_important), onPressed: () {}),
        ],
      ),
    );
  }
}

class Screen_search extends StatelessWidget {
  const Screen_search({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Stack(
        children: [
          Image.asset('assets/pics/nick-romanov-_hw4aUQ81ic-unsplash.jpg'),
          _SearchPanel(),
          _TextSection(),
        ],
      ),
    );
  }
}

class _SearchPanel extends StatelessWidget {
  const _SearchPanel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0, -.6),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _IconText(icon: Icons.hotel, txt: 'Hotel'),
                  _IconText(icon: Icons.flight, txt: 'Flight'),
                  _IconText(icon: Icons.car_rental, txt: 'Car'),
                ],
              ),
              Text('Choose Destination'),
              _TextField(icon: Icons.search),
              _TextField(icon: Icons.date_range),
              _TextField(icon: Icons.person),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: FlatButton(
                    child: Text('Search', style: TextStyle(color: Colors.white)),
                    onPressed: () {},
                    color: THEME_COLOR,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _IconText extends StatelessWidget {
  final IconData icon;
  final String txt;
  const _IconText({Key key, this.icon, this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: () {},
        child: Column(
          children: <Widget>[Icon(icon), Text(txt)],
        ),
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  final IconData icon;
  const _TextField({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          suffixIcon: Icon(icon),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}

class _TextSection extends StatelessWidget {
  const _TextSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      alignment: Alignment.bottomCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Coronavirus (Covid-19) Update', style: TextStyle(color: Colors.blueAccent)),
          Text('Stay Informed and Travel Safe'),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 12, top: 12),
                child: Icon(Icons.error, color: Colors.orangeAccent, size: 50),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                      'Free Cancellation, Zero Payment. \nBe flexible by opting for free cancellation\nzero payment now booking option'),
                  Text('Know More', style: TextStyle(color: Colors.blueAccent)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
