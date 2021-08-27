import 'package:flutter/material.dart';
import 'package:navbare/page/chat.dart';
import 'package:navbare/page/dashbord.dart';
import 'package:navbare/page/profile.dart';
import 'package:navbare/page/setting.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int ccT=0;
  final List<Widget> screens = [
    DashBord(),
    Chat(),
    Setting(),
    Profile()
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = DashBord();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_ic_call),

        onPressed: (){}





      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
       bottomNavigationBar: BottomAppBar(
       child:Container(
         height: 60,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 MaterialButton(
                   minWidth: 40,
                     onPressed: (){
                     setState(() {
                       currentScreen = DashBord();
                       ccT=0;
                     });},
                   child:Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(
                         Icons.message,
                         color: ccT==0 ? Colors.blue : Colors.grey,
                       ),
                       Text('messages',
                         style: TextStyle(
                           color: ccT==0 ? Colors.blue:Colors.grey
                         ),
                       )
                     ],
                   ) ,
                 ),
                 MaterialButton(
                   minWidth: 40,
                   onPressed: (){
                     setState(() {
                       currentScreen = Chat();
                       ccT=1;
                     });},
                   child:Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(
                         Icons.euro,
                         color: ccT==1 ? Colors.blue : Colors.grey,
                       ),
                       Text('tarifs'
                           ,style: TextStyle(
                           color: ccT==1 ? Colors.blue : Colors.grey
                         ),
                       )
                     ],
                   ) ,
                 )
               ],
             ),
             //right tap bar icons
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 MaterialButton(
                   minWidth: 40,
                   onPressed: (){
                     setState(() {
                       currentScreen = Setting();
                       ccT=2;
                     });},
                   child:Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(
                         Icons.contact_phone,
                         color: ccT==2 ? Colors.blue : Colors.grey,
                       ),
                       Text('contacts',
                         style: TextStyle(
                             color: ccT==2 ? Colors.blue:Colors.grey
                         ),
                       )
                     ],
                   ) ,
                 ),
                 MaterialButton(
                   minWidth: 40,
                   onPressed: (){
                     setState(() {
                       currentScreen = Profile();
                       ccT=3;
                     });},
                   child:Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(
                         Icons.account_box,
                         color: ccT==3 ? Colors.blue : Colors.grey,
                       ),
                       Text('profile'
                         ,style: TextStyle(
                             color: ccT==3 ? Colors.blue : Colors.grey
                         ),
                       )
                     ],
                   ) ,
                 )
               ],
             )
           ],
         ),

       ),
       ),
    );
  }
}

