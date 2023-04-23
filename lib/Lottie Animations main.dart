import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData.dark(),
      home: Lottie(composition: null,),
    );
  }
}