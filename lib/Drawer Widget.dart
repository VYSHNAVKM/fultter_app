import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DrawerExample',
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MyStateWidgetState();

  MyStateWidgetState() {}
}

class MyStateWidgetfulWidgetState extends State<MyStatefulWidget> {
  int selectedeIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> widgetoption = <Widget>[
    Text(
      'index 0 :home',
      style: optionStyle,
    ),
    Text(
      'index 1 :Business',
      style: optionStyle,
    ),
    Text(
      'index 2 :Settings',
      style: optionStyle,
    ),
    Text(
      'index 3 :Exit',
      style: optionStyle,
    ),
  ];

  void onItemTap(int index) {
    setState(() {
      selectedeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Drawer'),
        backgroundColor: Colors.amber,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              child: Text(
                'Drawer Header',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('message'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Contact'),
            ),
          ],
        ),
      ),
    );
  }
}
