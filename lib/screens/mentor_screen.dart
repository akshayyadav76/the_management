import 'package:flutter/material.dart';

import '../widget/circular_image.dart';
import '../provider/students.dart';
import 'package:provider/provider.dart';
import '../widget/student_tile.dart';

class MentorScreen extends StatefulWidget {
  static const routeName05='/mentorscreen';

  @override
  _MentorScreenState createState() => _MentorScreenState();
}

class _MentorScreenState extends State<MentorScreen> {
bool isStopgGetMore =true;
bool isLoding = true;

  @override
  Widget build(BuildContext context) {
    final mentorName =ModalRoute.of(context).settings.arguments;
  final list=  Provider.of<Students>(context,listen: false);
   var allList =list.allStudents;
       var menterList= list.mentor(mentorName);

    if(allList.length ==0){
      print("now worki");
      if(isStopgGetMore){
        list.getData().then((_){
          if(this.mounted){
            setState(() {
              isLoding =false;
              isStopgGetMore =false;
            });
          }

        });

      }
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[

            
            CircularImage(
              facultyName: mentorName,
              facultyImage: 'assets/faculty_images/demo.jpg',),

                Center(child: Text('batch 19-21')),
            Expanded(
              child: menterList.length ==0 ? Center(child: CircularProgressIndicator(),)
                  : ListView.builder(
               itemCount: menterList.length,
                  itemBuilder: (context,i){
                 return ChangeNotifierProvider.value(
                     value: menterList[i],
                   child: StudentTile(),
                 );
                  }),
            ),

          ],
        ),
      ),
    );;
  }
}
