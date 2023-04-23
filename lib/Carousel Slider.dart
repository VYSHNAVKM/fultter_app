import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Slider',
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Slider'),
      ),
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/Artan_brook_one_piece_f5b7ee0e-d852-499b-bb00-714e0b008380.png"),
                      fit: BoxFit.cover,
                    ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage(
                          "haruka_luffy_one_piece_e5a7b9ad-3c6f-44d9-a780-526d3f4dd096.png"),
                      fit: BoxFit.cover,
                    ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("IMG-20230224-WA0002.jpg"),
                      fit: BoxFit.cover,
                    ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage(
                          "JOTARO_CUJOH_AGIOTA___roronoa_zoro_e86f02ed-a36c-4dd2-9695-aa44c330e34c.png"),
                      fit: BoxFit.cover,
                   ),
                ),
              ),
            ],
            options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(microseconds: 800),
                viewportFraction: 0.8),
          ),
        ],
      ),
    );
  }
}
