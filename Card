import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card'),
          backgroundColor: Colors.greenAccent[400],
          centerTitle: true,
        ),
        body: Center(
          child: Card(
            elevation: 50,
            shadowColor: Colors.black,
            color: Colors.lime[100],
            child: SizedBox(
              width: 300,
              height: 500,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 130,
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://i0.wp.com/www.primesworld.com/wp-content/uploads/Mammootty-2.jpg?resize=1200%2C800&ssl=1"),
                        radius: 90,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'MAMMOOTTY',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Muhammad Kutty Panaparambil Ismail'
                      'born 7 September 1951),'
                      ' known mononymously by the hypocorism Mammootty ,',
                      style: TextStyle(
                          fontSize: 13,
                          fontStyle: FontStyle.italic,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 80,
                      child: ElevatedButton(
                        onPressed: () => 'Null',
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Row(
                            children: const [
                              Icon(Icons.touch_app),
                              Text('Visit')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
