import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navbare/home.dart';
import 'package:rive/rive.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

 // dynamic _opacity =0.0;
  void initState() {
    // TODO: implement initState
    super.initState();
    //animation();
    /*Timer(Duration(seconds: 5), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(_)=> Home()
      ));
    }); */



  }
/*void animation (){
  Future.delayed(Duration(milliseconds: 2000), () {
    setState(() {
      _opacity=1.0;

    });
    // Do something
  });
}*/
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(


        body: Stack(
          fit: StackFit.loose,

           children: <Widget>[

             RiveAnimation.asset('assets/realintroanim.riv',fit: BoxFit.fill),



            Positioned(
              bottom:90,
              left: 74,

              child:Opacity(
                opacity: 0.0,

                child:new InkWell(
                  splashColor: Colors.blue,
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(_)=>SplashScreen())
                    );
                  },
                  child:Image.asset('assets/button.png',width: 210,height: 60,),
                ) ,
              ),


            )


          ]
          ),


      ),
    );
  }
}