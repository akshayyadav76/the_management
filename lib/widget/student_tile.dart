import 'package:flutter/material.dart';

class StudentTile extends StatelessWidget {
  final String studentName;
  final String section;
  final String mentor;
  final String emailId;
  final String photo;
  final int contactNo;
  final int parentNo;
  final bool isSurveillance;

  StudentTile(
      {this.studentName, this.section, this.mentor, this.emailId, this.photo, this.isSurveillance,
        this.contactNo, this.parentNo,});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(studentName),
      leading: CircleAvatar(backgroundImage: AssetImage(photo),),
//      trailing: widget(
//        child: Row(
//            children: <Widget>[
//              IconButton(icon: Icon(Icons.favorite_border), onPressed: () {},),
//              IconButton(icon: Icon(Icons.more_vert), onPressed: () {},)
//            ]),
//      ),
      subtitle: Row(children: <Widget>[
        Text('Section: $section'),
        Text('Mentor: $mentor'),
      ],),

    );
  }
}
