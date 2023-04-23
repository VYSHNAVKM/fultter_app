import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner:  false,
     home: Myhome(),
   );
  }

}

class Myhome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyhomeState();

 }

class MyhomeState extends State<Myhome>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("ROW WEDGET"),
      ),
      body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget> [
        Container(margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.green
        ),
          child:Text("HELOO",style: TextStyle(color: Colors.yellowAccent,fontSize: 20),),),
        Container(
          margin: EdgeInsets.all(15.0),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
          color: Colors.red),
          child: Text("HAI",style: TextStyle(color: Colors.white,fontSize: 20),),
        ),
        Container(
          margin: EdgeInsets.all(12.0),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
          color: Colors.green),
          child: Text('HELOO',style: TextStyle(color: Colors.black,fontSize: 20),),
        )
      ],
      ),
    );
  }
}
