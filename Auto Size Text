import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(title: Text('AutoSize Text '),
          backgroundColor: Colors.red,),
        body: Center(
          child: SizedBox(
            width: 200.0,
            height: 140.0,
            child: AutoSizeText(
              'Hello Geeks! We will break this line into 3 lines !!',
              style: TextStyle(fontSize: 30.0),
              maxLines: 2,
            ),
          ),
        ),
      ),
    );
  }
}
