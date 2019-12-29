import 'package:flutter/material.dart';

import './screens/dashboard_screen.dart';

void main(){
  runApp(TheManagement());
}

class TheManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.black,
        fontFamily: "OleoScript",
        iconTheme: IconThemeData(size: 28),
    textTheme: TextTheme(subtitle: TextStyle(fontSize: 20,color:Colors.green),
    button:TextStyle(fontSize: 20,color:Colors.red)

      )),
      debugShowCheckedModeBanner: false,
      home: DashBoardScreen(),
    );
  }
}
