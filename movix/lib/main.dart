import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 14,
        navigateAfterSeconds: new AfterSplash(),
        title: new Text(
          '\n\nMOVIE\n  NIGHT',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 60.0,
            color: Colors.redAccent[400],
          ),
          textAlign: TextAlign.justify,
        ),
        backgroundColor: Colors.black,
        useLoader: true,
        styleTextUnderTheLoader: new TextStyle(),
        // photoSize: 100.0,
        loaderColor: Colors.redAccent[400]);
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: new AppBar(
        backgroundColor: Colors.grey[850],
        title: Center(
          child: new Text(
            "MOVIE NIGHT",
            style: TextStyle(
              color: Colors.redAccent[400],
              fontSize: 30,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        //shadowColor: Colors.redAccent[400],
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(top: 25),
                  height: 60,
                  width: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                    border: Border.all(
                      color: Colors.redAccent[400],
                      width: 5,
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "search",
                            style: TextStyle(
                              color: Colors.redAccent[400],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  print("here");
                },
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 115, top: 15),
                child: Text(
                  "MOVIES\n_____________________________",
                  style: TextStyle(
                    color: Colors.redAccent[400],
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 220.0 * 2 / 3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  width: 121 * 2 / 3,
                  color: Colors.redAccent[400],
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  width: 121 * 2 / 3,
                  color: Colors.blue,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  width: 121 * 2 / 3,
                  color: Colors.green,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  width: 121 * 2 / 3,
                  color: Colors.yellow,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  width: 121 * 2 / 3,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 115, top: 15),
                child: Text(
                  "SERIES\n_____________________________",
                  style: TextStyle(
                    color: Colors.redAccent[400],
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 220.0 * 2 / 3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  width: 121 * 2 / 3,
                  color: Colors.redAccent[400],
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  width: 121 * 2 / 3,
                  color: Colors.blue,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  width: 121 * 2 / 3,
                  color: Colors.green,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  width: 121 * 2 / 3,
                  color: Colors.yellow,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  width: 121 * 2 / 3,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
