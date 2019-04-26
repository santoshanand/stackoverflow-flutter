import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animation',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // home: VideoDetail(),
      // home: StackOne(),
      home: MyHomePage(
        title: 'Hello',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              SearchInput(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  TopButton(title: 'Animated List'),
                  TopButton(title: 'Movies'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopButton extends StatelessWidget {
  final String title;
  TopButton({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2 - 50,
      child: FlatButton(
        child: Text(title),
        onPressed: () {
          debugPrint('Hello ' + title);
        },
        color: Colors.red,
      ),
    );
  }
}

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Search',
      ),
    );
  }
}

class CustomList extends StatelessWidget {
  CustomList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Test ');
  }
}
