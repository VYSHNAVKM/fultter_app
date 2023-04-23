import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: "Clip Rect",
    theme: ThemeData(
      primarySwatch: Colors.green
    ),
    home: HomePage(),
  );
  }
}

class HomePage extends StatefulWidget {  @override
  State<StatefulWidget> createState() =>HomePageState();
}

class HomePageState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipRect"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ClipRect(
          child: Align(
        alignment: Alignment.topCenter,
            heightFactor: .5,
            child: Image.network('https://picsum.photos/250?image=9'),
      ),
    ),
    ),
      backgroundColor: Colors.grey,
    );
  }
}

class MyClip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
  return Rect.fromLTWH(0, 0, 100, 100);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
