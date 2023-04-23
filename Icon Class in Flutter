import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.music_note)),
                Tab(icon: Icon(Icons.music_video)),
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(icon: Icon(Icons.grade)),
                Tab(icon: Icon(Icons.email)),
              ],
            ),
            title: Text("ICON CLASS"),
            backgroundColor: Colors.red,
          ),
          body: TabBarView(children: [
            Icon(
              Icons.music_note,
              size: 100,
            ),
            Icon(
              Icons.music_video,
              size: 100,
              color: Colors.blue,
            ),
            Icon(
              Icons.camera_alt,
              size: 100,
              color: Colors.white,
            ),
            Icon(
              Icons.grade,
              size: 100,
              color: Colors.yellow,
              semanticLabel: 'star',
            ),
            Icon(
              Icons.email,
              size: 100,
              color: Colors.indigo,
            ),
          ]),
        ),
      ),
    );
  }
}
