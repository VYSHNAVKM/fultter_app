import 'package:flutter/material.dart';
import 'package:fultter_app/hinge_animation.dart';


main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HingeAnimation(
      ),
    );
  }

}