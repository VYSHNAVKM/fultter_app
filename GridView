import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: Center(
              child: Text(
                'GRID VIEW',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          body: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            shrinkWrap: true,
            children: List.generate(20, (index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://i0.wp.com/www.primesworld.com/wp-content/uploads/Mammootty-2.jpg?resize=1200%2C800&ssl=1"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20.0)),
                ),
              );
            },),
          ),
        ),
    );
  }
}
