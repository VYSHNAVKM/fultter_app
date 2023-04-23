import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

class HingeAnimation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HingeAnimationState();
}

class HingeAnimationState extends State<HingeAnimation>
    with SingleTickerProviderStateMixin {


  late AnimationController animationController;
  late Animation rotationAnimation;
  late Animation<double> slideAnimation;
  late Animation<double> opacityAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );

    rotationAnimation = Tween(end: 0.15, begin: 0.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(0.9, 0.5, curve: Curves.bounceInOut),
      ),
    );

    slideAnimation = Tween(begin: 100.0, end: 600.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
      ),
    );

    opacityAnimation = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  } // the animation widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        automaticallyImplyLeading: false,
        title: Text("Hinge"),
        centerTitle: true,
      ),
      body: AnimatedBuilder(
        animation: slideAnimation,
        builder: (BuildContext context, Widget? child) => Container(
          width: 200,
          height: 150,
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.only(
            left: 100,
            top: slideAnimation.value,
          ),
          child: RotationTransition(
            turns: animationController,
            child: Center(
              child: Text('Haloo dears', style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(300, 150, 500, opacityAnimation.value),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        backgroundColor: Colors.green[300],
        onPressed: () {
          animationController.forward();
        },
      ),
    );
  }
}
