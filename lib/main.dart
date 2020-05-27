import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //home: MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/one': (context) => ScreenTwo(),
        '/two': (context) => ScreenThree(),
        '/three': (context) => MyHomePage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen One"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                "Screen One",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/one');
                },
                child: Text("Screen One"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/two');
                },
                child: Text("Screen Three"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Two"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                "Screen Two",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/two');
                },
                child: Text("Screen Two"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ScreenThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Three"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                "Screen Three",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/three');
                },
                child: Text("Screen Three"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
