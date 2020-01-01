import 'package:flutter/cupertino.dart';
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
   final dd= MediaQuery.of(context).size.width;
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(backgroundImage: AssetImage(photo),),
          Column(children: <Widget>[
            Text(studentName),
           Row(children: <Widget>[
                Text('Section: $section'),
                Text('Mentor: $mentor'),
              ],),
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(width: 30,),
              Container(
                  height: 40,
                  width: 10,
                  child: IconButton(icon: Icon(Icons.favorite_border), onPressed: () {},)),
              IconButton(icon: Icon(Icons.more_vert), onPressed: () {},)
            ],
          ),

        ],
      ),
    );


//
//      Card(
//      child: Row(
//        mainAxisSize: MainAxisSize.min,
//        children: <Widget>[
//          Container(
//            width: dd*0.8,
//            child: ListTile(
//              title: Text(studentName),
//              leading: CircleAvatar(backgroundImage: AssetImage(photo),),
//              trailing:
//
//
//                      //mainAxisAlignment: MainAxisAlignment.end,
//
//                        IconButton(icon: Icon(Icons.favorite_border), onPressed: () {},),
//                       //
//              subtitle: Row(children: <Widget>[
//                Text('Section: $section'),
//                Text('Mentor: $mentor'),
//              ],),
//              onTap: (){},
//
//            ),
//          ),
//          Container(
//              width: dd*0.2,
//              child: IconButton(icon: Icon(Icons.more_vert), onPressed: () {},))
//        ],
//      ),
//    );
  }
}
