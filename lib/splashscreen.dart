import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:navbare/home.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 10), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(_)=> Home()
      ));
    });


  }

  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('lottie animation'),
        ),

        body: Center(
          child: Container(
            child: Lottie.asset('assets/animation.json'),

          )

        ),

      ),
    );
  }
}