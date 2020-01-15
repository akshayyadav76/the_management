import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widget/circular_image.dart';
import '../widget/my_drawer.dart';
import '../screens/students_list_screen.dart';
import '../provider/students.dart';
import '../screens/mentor_screen.dart';




class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  bool check=true;
  bool getStudent=true;

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
      backgroundColor: Theme.of(context).primaryColor,
      drawer:  MyDrawer(),
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
                      Center(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed(StudentsListScreen.routeName);
                          },
                        child: CircularImage(
                              facultyName: "Dr.PK Chopra",
                              facultyImage: 'assets/faculty_images/demo.jpg',),

                        ),
                      ),
                  SizedBox(height: 5,),


                  IconButton(icon: Icon(Icons.dehaze),onPressed: dv,),

                  Container(
                    margin: EdgeInsets.only(top: 120),
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){Navigator.of(context).
                          pushNamed(MentorScreen.routeName05,arguments: "MM");},
                          child: CircularImage(facultyName: "Mamta Manshani",
                            facultyImage: 'assets/faculty_images/demo.jpg',),
                        ),
                        GestureDetector(
                          onTap: (){Navigator.of(context).
                          pushNamed(MentorScreen.routeName05,arguments: "DT");},
                          child: CircularImage(facultyName: "Deepak Tiwari",
                            facultyImage: 'assets/faculty_images/demo.jpg',),
                        ),
                        GestureDetector(
                          onTap: (){Navigator.of(context).
                          pushNamed(MentorScreen.routeName05,arguments: "PS");},
                          child: CircularImage(facultyName: "Poorva Sakergayen",
                            facultyImage: 'assets/faculty_images/demo.jpg',),
                        ),
                        GestureDetector(
                          onTap: (){Navigator.of(context).
                          pushNamed(MentorScreen.routeName05,arguments: "AM");},
                          child: CircularImage(facultyName: "Ashish Mishra",
                            facultyImage: 'assets/faculty_images/demo.jpg',),
                        ),
                        GestureDetector(
                          onTap: (){Navigator.of(context).
                          pushNamed(MentorScreen.routeName05,arguments: "AKM");},
                          child: CircularImage(facultyName: "Arun Kumar Mishra",
                            facultyImage: 'assets/faculty_images/demo.jpg',),
                        ),
                        GestureDetector(
                          onTap: (){Navigator.of(context).
                          pushNamed(MentorScreen.routeName05,arguments: "AK");},
                          child: CircularImage(facultyName: "Amit Khare",
                            facultyImage: 'assets/faculty_images/demo.jpg',),
                        ),
                        GestureDetector(
                          onTap: (){Navigator.of(context).
                          pushNamed(MentorScreen.routeName05,arguments: "AB");},
                          child: CircularImage(facultyName: "Ansu Bhagya",
                            facultyImage: 'assets/faculty_images/demo.jpg',),
                        ),
                        GestureDetector(
                          onTap: (){Navigator.of(context).
                          pushNamed(MentorScreen.routeName05,arguments: "CC");},
                          child: CircularImage(facultyName: "Chetan Chauhan",
                            facultyImage: 'assets/faculty_images/demo.jpg',),
                        ),
                        GestureDetector(
                          onTap: (){Navigator.of(context).
                          pushNamed(MentorScreen.routeName05,arguments: "MJ");},
                          child: CircularImage(facultyName: "Mansi Jani",
                            facultyImage: 'assets/faculty_images/demo.jpg',),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Text("------Recent Call's------" ,style: TextStyle(fontSize: 20),),
              Expanded(
                child: Consumer<Students>(
                  builder: (context,data,_){
                    data.recentsLIst();
                    return data.recents.length ==0 ?
                    Center(child: Image(
                        image: AssetImage("assets/waiting.png")))
                        :ListView.builder(
                      itemCount:  data.recents.length,
                        itemBuilder:(context,i){
                        return ListTile(
                          leading: CircleAvatar(backgroundImage: AssetImage(data.recents[i].photo),),
                          title: Text(data.recents[i].studentName),
                          subtitle: Row(
                            children: <Widget>[
                              Text('Section: ${(data.recents[i].section)}'),
                              Text('Mentor: ${(data.recents[i].mentor)}'),
                            ],
                          ),
                          trailing: IconButton(icon: Icon(Icons.delete),onPressed: (){
                            data.delete('recents', data.recents[i].rollNumberId);
                          },),
                        );
                        } );
                  },

                )),
            ],
          ),
        ),
      ),
    );
  }
}
