import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class StackOne extends StatefulWidget {
  @override
  _StackOneState createState() => _StackOneState();
}

class _StackOneState extends State<StackOne> {
  @override
  Widget build(BuildContext context) {
    Future<bool> willpop() {
      return showDialog(
            context: context,
            builder: (context) => new AlertDialog(
                  title: new Text('Are you sure?'),
                  content: new Text('Do you want to exit'),
                  actions: <Widget>[
                    new FlatButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: new Text('No'),
                    ),
                    new FlatButton(
                      onPressed: () => SystemNavigator.pop(),
                      child: new Text('Yes'),
                    ),
                  ],
                ),
          ) ??
          false;
    }

    return WillPopScope(
        onWillPop: willpop,
        child: new WebviewScaffold(
          url: "http://gogole.com",
          withJavascript: true,
          withLocalStorage: true,
        ));
  }
}
