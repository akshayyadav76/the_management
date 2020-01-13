import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
  bool check=true;

  void dv() {
    setState(() {
      _scaffoldKey.currentState.openDrawer();
    });
  }
  @override
  void initState() {

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
   print("sssssssssssssssssssssssssssssssssssssssssss$check");

    Provider.of<Students>(context,listen: false).getData();

//    if(check){
//      Provider.of<Students>(context,listen: false).getBooks().then((context){
//        setState(() {
//          check =false;
//        });
//      });
//    }

    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).primaryColor,
      drawer: MyDrawer(),
      body: SafeArea(
        child: Container(
          height: height * 1,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 0.0,
                    right:110.0,
                    child: Container(
                      width: 500.0,
                      height: 500.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.yellow[400].withOpacity(0.5)),
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    left: 90.0,
                    child: Container(
                      width: 300.0,
                      height: 300.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.yellow[400].withOpacity(0.5)),
                    ),
                  ),

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

                  Container(
                    margin: EdgeInsets.only(top: 120),
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        CircularImage(facultyName: "MR.Amit Khare",
                          facultyImage: 'assets/faculty_images/demo.jpg',),
                        CircularImage(facultyName: "Ms.Ansu Bhagya",
                          facultyImage: 'assets/faculty_images/demo.jpg',),
                        CircularImage(facultyName: "Mr.Ashish Mishra",
                          facultyImage: 'assets/faculty_images/demo.jpg',),
                        CircularImage(facultyName: "Chetan Chauhan",
                          facultyImage: 'assets/faculty_images/demo.jpg',),
                        CircularImage(facultyName: "MR.Deepak Tiwari",
                          facultyImage: 'assets/faculty_images/demo.jpg',),
                        CircularImage(facultyName: "Dr.Mamta Manshani",
                          facultyImage: 'assets/faculty_images/demo.jpg',),
                        CircularImage(facultyName: "Poorva Sakergayen",
                          facultyImage: 'assets/faculty_images/demo.jpg',),
                        CircularImage(facultyName: "Mansi Jani",
                          facultyImage: 'assets/faculty_images/demo.jpg',),
                      ],
                    ),
                  ),
                ],
              ),

              Text("------Recent Call's------" ,style: TextStyle(fontSize: 20),),
              Expanded(
                child: SingleChildScrollView(
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
