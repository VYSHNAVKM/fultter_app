import 'package:flutter/material.dart';

main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Hello World'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.comment),
                tooltip: 'Comment Icon',
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.settings),
                tooltip: 'Setting Icon',
                onPressed: () {},
              )
            ],
            backgroundColor: Colors.green,
            elevation: 50.0,
            leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Menu Icon',
              onPressed: () {},
            ),
            brightness: Brightness.dark,
          ),
          body: Center(
            child: Text(
              'VYSHNAV K M',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
