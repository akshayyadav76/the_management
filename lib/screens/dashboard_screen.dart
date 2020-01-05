import 'package:flutter/material.dart';

import '../widget/circular_image.dart';
import '../widget/my_drawer.dart';
import '../screens/students_list_screen.dart';
import '../provider/students.dart';



class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();

  void dv() {
    setState(() {
      _scaffoldKey.currentState.openDrawer();
    });
  }


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      key: _scaffoldKey,
      //appBar: AppBar(),
      backgroundColor: Theme.of(context).primaryColor,
//      appBar: AppBar(
//        shape: CircleBorder(side: BorderSide(style:BorderStyle.none,),),
//
//      ),
      drawer: MyDrawer(),
      body: SafeArea(
        child: Container(

          height: height * 1,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                    Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("the"),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed(StudentsListScreen.routeName);
                        },
                        child: CircularImage(
                          facultyName: "Dr.PK Chopra",
                          facultyImage: 'assets/faculty_images/demo.jpg',),
                      ),
                       // ),
                        Text("Mana"),
                      ],
                    ),

                  IconButton(icon: Icon(Icons.dehaze),onPressed: dv,),
                ],
              ),
              Container(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    CircularImage(facultyName: "Dr.PK Chopra",
                      facultyImage: 'assets/faculty_images/demo.jpg',),
                    CircularImage(facultyName: "Dr.PK Chopra",
                      facultyImage: 'assets/faculty_images/demo.jpg',), CircularImage(facultyName: "Dr.PK Chopra",
                      facultyImage: 'assets/faculty_images/demo.jpg',), CircularImage(facultyName: "Dr.PK Chopra",
                      facultyImage: 'assets/faculty_images/demo.jpg',), CircularImage(facultyName: "Dr.PK Chopra",
                      facultyImage: 'assets/faculty_images/demo.jpg',),
                  ],
                ),
              ),
              Text("------Recent Call's------" ,style: TextStyle(fontSize: 20),),
              Expanded(child: SingleChildScrollView(
                child: Column(children: <Widget>[
                  Text('ssfsdf',style: TextStyle(fontSize: 50),),
                  Text('ssfsdf',style: TextStyle(fontSize: 50),),
                  Text('ssfsdf',style: TextStyle(fontSize: 50),),
                  Text('ssfsdf',style: TextStyle(fontSize: 50),),
                  Text('ssfsdf',style: TextStyle(fontSize: 50),),
                  Text('ssfsdf',style: TextStyle(fontSize: 50),),
                  Text('ssfsdf',style: TextStyle(fontSize: 50),),
                  Text('ssfsdf',style: TextStyle(fontSize: 50),),
                  Text('ssfsdf',style: TextStyle(fontSize: 50),),
                ],),
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
