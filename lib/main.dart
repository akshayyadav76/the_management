import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/dashboard_screen.dart';
import './screens/students_list_screen.dart';
import './provider/students.dart';
import './provider/student.dart';

void main(){
  runApp(TheManagement());
}

class TheManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Students()),

      ],

        child: MaterialApp(
          theme: ThemeData(
            primaryColor: Colors.white,
            accentColor: Colors.black,
            fontFamily: "OleoScript",
            iconTheme: IconThemeData(size: 28),
        textTheme: TextTheme(subtitle: TextStyle(fontSize: 20,color:Colors.green),
        button:TextStyle(fontSize: 20,color:Colors.red),


          )),
          debugShowCheckedModeBanner: false,
          home: DashBoardScreen(),
          routes: {
            StudentsListScreen.routeName:(conttext)=>StudentsListScreen(),
          },
        ),
      );
  }
}
