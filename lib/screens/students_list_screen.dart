import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../widget/circular_image.dart';
import '../provider/students.dart';
import '../widget/student_tile.dart';



class StudentsListScreen extends StatelessWidget {
  static const routeName ='/StudentsListScreen';

  @override
  Widget build(BuildContext context) {
    final allList =Provider.of<Students>(context).allStudents;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CircularImage(
              facultyName: "Dr.PK Chopra",
              facultyImage: 'assets/faculty_images/demo.jpg',),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
              Text('batch 19-21'),
              SizedBox(width: 80,),
              IconButton(icon: Icon(Icons.filter_list),),
            ],),
            Expanded(
                child: ListView.builder(
                  itemCount: allList.length,
                    itemBuilder: (context,i){
                    return StudentTile(
                      studentName: allList[i].studentName,
                      section: allList[i].section,
                      contactNo: allList[i].contactNo,
                      emailId: allList[i].emailId,
                       mentor: allList[i].mentor,
                      parentNo: allList[i].parentNo,
                      photo: allList[i].photo,
                      isSurveillance: allList[i].isSurveillance,

                    );
                    }),

            ),
          ],
        ),
      ),
    );
  }
}
