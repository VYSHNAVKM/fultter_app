import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String title = 'Radio Button';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: const Text(title)),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

enum SingingCharacter { Apple, Orenge }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => MyStatefulWidgetState();
}

class MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingingCharacter? character = SingingCharacter.Apple;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Apple'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.Apple,
            groupValue: character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Orenge'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.Orenge,
            groupValue: character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
