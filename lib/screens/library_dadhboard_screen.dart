import 'package:flutter/material.dart';

import '../widget/book_container.dart';

class LibraryDashbordScreen extends StatelessWidget {
  static const routeName04 ='/libraryscreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: Column(
         children: <Widget>[
           Container(
             margin: EdgeInsets.all(20),
             alignment: Alignment.topCenter,
             child: Text("LIbrary",style: TextStyle(fontSize: 30),),
             decoration: BoxDecoration(
                 //border: Border.all(color: Colors.orange),
               borderRadius: BorderRadius.circular(40),
               
              
             ),

           ),
           Expanded(
             child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2,childAspectRatio: 3/2,mainAxisSpacing: 10,crossAxisSpacing: 10
             ),children: <Widget>[
               BookContainer(30,0,"MB Series"),
               BookContainer(0,30,"MC Series"),
               BookContainer(30,0,"MG Series"),
               BookContainer(0,30,"AK Series"),
             ],),
           ),

         ],
       ),
     ),

    );
  }
}
