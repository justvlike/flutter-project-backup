import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:help_me/generated/i18n.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title});

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var localization = I18n.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(localization.helpMe),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              I18n.of(context).pushedTimes,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
