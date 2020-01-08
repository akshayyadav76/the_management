import 'package:flutter/material.dart';

import '../widget/circular_image.dart';
import '../provider/students.dart';

class MentorScreen extends StatelessWidget {
  static const routeName05='/mentorscreen';


  @override
  Widget build(BuildContext context) {
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
                SizedBox(width: 70,),
              ],),

          ],
        ),
      ),
    );;
  }
}
