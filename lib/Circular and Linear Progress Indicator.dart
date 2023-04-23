import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loader(),
    );
  }
}

class Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loader"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              backgroundColor: Colors.yellow,
              valueColor: AlwaysStoppedAnimation(Colors.red),
              strokeWidth: 10,
            ),
            SizedBox(
              height: 20,
            ),
            LinearProgressIndicator(
              backgroundColor: Colors.blue,
              valueColor: AlwaysStoppedAnimation(Colors.black),
              minHeight: 20,
            ),
          ],
        ),
      ),
    );
  }
}
