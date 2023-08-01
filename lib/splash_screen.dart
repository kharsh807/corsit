import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rocsit/mainPage.dart';


class splashScreen extends StatefulWidget{
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(milliseconds: 5000), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => mainPage(),
          ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child:Container(
            width: 200,
            height: 200,
            color: Colors.black,
            child: Image.asset('lib/assets/icons/ezgif.com-gif-maker.gif'),
          ),
        ),

      ),
    );
  }
}