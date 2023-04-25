import 'package:flutter/material.dart' show AppBar, BuildContext, Center, Colors, Container, EdgeInsets, Key, MaterialApp, Scaffold, State, StatefulWidget, StatelessWidget, Text, TextButton, TextStyle, ThemeData, Widget, runApp;
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp( MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Toast",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toast"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Fluttertoast.showToast(
              msg: 'Heloo All.....',
              backgroundColor: Colors.grey,
            );
          },
          child: Container(
            padding: const EdgeInsets.all(14),
            color: Colors.green,
            child: const Text(
              'Show Toast',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}