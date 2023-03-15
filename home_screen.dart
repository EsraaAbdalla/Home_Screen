// ignore_for_file: use_key_in_widget_constructors, avoid_print

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
     return Scaffold(
       appBar:AppBar(
         backgroundColor: Colors.teal,
         leading: Icon(
           Icons.menu,
         ),
         title: Text(
           'First App',
         ),
         actions: [
           IconButton(
               onPressed: onNotification,
               icon: Icon(
                 Icons.notification_important,
               ),
           ),
           IconButton(
             icon: Icon(
               Icons.search,
             ), onPressed: () {  },
           ),
         ],
       ) ,
         body: Column(
           children:
           [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                 ),
                 clipBehavior: Clip.antiAliasWithSaveLayer,
                 child: Stack(
                   alignment: Alignment.bottomCenter,
                   children:
                   [
                     Image(
                         image: NetworkImage(
                           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlHG2n2iXDyNmfNQCuLPcTGJQp3V2kA_h8J-PHwsaFrkFjlYWTkD5f3jJ1zUOaDwCoH2c&usqp=CAU',
                         ),
                         height: 300.0,
                         width: 300.0,
                       fit: BoxFit.cover,
                     ),
                     Container(
                       color: Colors.black.withOpacity(.7),
                       width: 300.0,
                       padding:  const EdgeInsets.symmetric(
                         vertical: 10.0,
                         horizontal: 10.0,
                       ),

                       child: Text(
                         'Flower',
                         textAlign: TextAlign.center,
                         style: TextStyle(
                           fontSize: 30.0,
                           color: Colors.white,

                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
           ],
         ),
     );
  }
  void onNotification()
  {
    print("notification clicked");
  }
}

