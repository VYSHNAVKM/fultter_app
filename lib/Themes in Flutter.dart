import 'package:flutter/material.dart';

main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Theme',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.green,
        accentColor: Colors.deepPurple,
        fontFamily:'TrajanPro',

        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0,fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 36.0,fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0,fontFamily: 'Pacifico'),
        ),
      ),

      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('THEME'),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).accentColor,
          child: Text(
              'Hello All',style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: Theme.of(context).colorScheme.copyWith(secondary: Colors.red),
        ),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.arrow_drop_down_circle) ,
        ),
      ),
    );
  }

}