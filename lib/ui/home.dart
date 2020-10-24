import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomeViewState();
  }
}

class HomeViewState extends State<HomeView> {
  int balance = 0;
  void _iamRich() {
    setState(() {
      balance += 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("I Am Rich"),
        backgroundColor: Colors.teal,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            //title
            new Padding(padding: EdgeInsets.all(16.0)),
            new Center(
              child: new Text(
                "Get Rich!",
                style: new TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 29.9),
              ),
            ),
            new Expanded(
              child: new Center(
                child: new Text(
                  '\$$balance',
                  style: new TextStyle(
                      color: (balance > 1000)
                          ? Colors.deepOrange
                          : Colors.cyanAccent,
                      fontWeight: FontWeight.w600,
                      fontSize: 49.9),
                ),
              ),
            ),
            new Expanded(
              child: new Center(
                child: new FlatButton(
                  color: Colors.teal,
                  onPressed: _iamRich,
                  child: new Text(
                    "Make It Rain",
                    style: new TextStyle(color: Colors.amber, fontSize: 25),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
