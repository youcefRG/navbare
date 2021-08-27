import 'package:flutter/material.dart';
class DashBord extends StatefulWidget {
  const DashBord({Key? key}) : super(key: key);

  @override
  _DashBordState createState() => _DashBordState();
}

class _DashBordState extends State<DashBord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('dashbord'),),
      body:Center(
        child: Text('Dashbord Screen'),
      ),
    );
  }
}
