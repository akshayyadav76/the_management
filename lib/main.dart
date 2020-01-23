import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import './screens/dashboard_screen.dart';
import './screens/students_list_screen.dart';
import './provider/students.dart';
import './screens/surveillance_list.dart';
import './screens/erp_login_screen.dart';
import './screens/library_dadhboard_screen.dart';
import './screens/books_list_screen.dart';
import './screens/mentor_screen.dart';
import './screens/office_screen.dart';
import 'screens/under_constraction_screen.dart';
import 'screens/mentorscreens/attandance_screen.dart';

void main(){
  runApp(TheManagement()
  );
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.yellow[600].withOpacity(0.7))
  );
}

class TheManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
            value: Students()),
      ],
        child: MaterialApp(
          theme: ThemeData(
            primaryColor: Colors.white,
            accentColor: Colors.amberAccent,
          //  primarySwatch: Colors.yellow[400],
              appBarTheme: AppBarTheme(color: Colors.amberAccent),

            fontFamily: "OleoScript",
            iconTheme: IconThemeData(size: 28),
        textTheme: TextTheme(subtitle: TextStyle(fontSize: 20,color:Colors.green),
        button:TextStyle(fontSize: 20,color:Colors.red),


          )),
          debugShowCheckedModeBanner: false,
          home: DashBoardScreen(),
          routes: {
            StudentsListScreen.routeName:(conttext)=>StudentsListScreen(),
            SurveillanceList.routeName:(context)=>SurveillanceList(),
            ErpLoginScreen.routName03:(context)=>ErpLoginScreen(),
            LibraryDashbordScreen.routeName04:(context)=>LibraryDashbordScreen(),
            BooksListScreen.routeName05:(context)=>BooksListScreen(),
            MentorScreen.routeName05:(context)=>MentorScreen(),
            OfficeScreen.route:(context)=>OfficeScreen(),
            AttandenceScreen.attandanceRoutName :(context)=>AttandenceScreen(),
          },
          onGenerateRoute: (RouteSettings setting){
            print("sss");
            return MaterialPageRoute(builder: (context)=>UnderConstraction());
            },
        ),
      );
  }
}
