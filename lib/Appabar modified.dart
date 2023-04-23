import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("WELCOME FLUTTER"),
          titleSpacing: 00.0,
          centerTitle: true,
          toolbarHeight: 60.2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
          elevation: 0.00,
          backgroundColor: Colors.green,
        ),
        body: const Center(
            child: Text(
          'HELLO',
          style: TextStyle(fontSize: 24),
        )),
      ),
    ));
