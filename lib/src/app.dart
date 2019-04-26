import 'package:flutter/material.dart';
import 'package:hello_app/src/futurebuilder_json.dart';

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animation',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        body: FutureBuilderJSON(),
      ),
    );
  }
}
