import 'package:flutter/material.dart';

// function to trigger the app build
void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

// build the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.android),
                  text: "Android",
                ),
                Tab(
                  icon: Icon(Icons.phone_iphone),
                  text: "iphone",
                ),
                Tab(
                  icon: Icon(Icons.desktop_windows),
                  text: "Windows",
                ),
              ],
            ), // TabBar
            title: const Text('Tab'),
            backgroundColor: Colors.green,
          ), // AppBar
          body: const TabBarView(
            children: [
              Center(child: Text("Page 1")),
              Center(child: Text("Page 2")),
              Center(child: Text("Page 3")),
            ],
          ), // TabBarView
        ), // Scaffold
      ), // DefaultTabController
    ); // MaterialApp
  }
}
