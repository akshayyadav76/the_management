import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/student.dart';

class StudentTile extends StatelessWidget {
//  final String studentName;
//  final String section;
//  final String mentor;
//  final String emailId;
//  final String photo;
//  final int contactNo;
//  final int parentNo;
//  final bool isSurveillance;

//  StudentTile({
//    this.studentName,
//    this.section,
//    this.mentor,
//    this.emailId,
//    this.photo,
//    this.isSurveillance,
//    this.contactNo,
//    this.parentNo,
//  });

  @override
  Widget build(BuildContext context) {
    final student =Provider.of<Student>(context,listen: false);
    print('build');
    return Card(
      child: ListTile(
        title: Text(student.studentName),
        leading: CircleAvatar(
          backgroundImage: AssetImage(student.photo),
        ),
        trailing: Row(
         // mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[

            Consumer<Student>(builder: (cont,studentCons,ch){
              return GestureDetector(
                  child: Icon(studentCons.isSurveillance?Icons.star:Icons.star_border),
                  onTap: () {
                student.changeSurveillance();},
              );},
            ),
            PopupMenuButton(icon: Icon(Icons.more_vert),
            itemBuilder: (_)=>[
              PopupMenuItem()
            ],),


          ],
        ),
        subtitle: Row(
          children: <Widget>[
            Text('Section: ${student.section}'),
            Text('Mentor: ${student.mentor}'),
          ],
        ),
        onTap: () {},
      ),
    );
  }
}
