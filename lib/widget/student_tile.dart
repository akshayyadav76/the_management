import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';


import '../provider/student.dart';
import '../provider/recent.dart';


class StudentTile extends StatelessWidget {

  Future _lunch(var numberEmail) async {
    final url = numberEmail;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'error';
    }
  }


  @override
  Widget build(BuildContext context) {
    final student = Provider.of<Student>(context, listen: false);
    print('build');
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
        title: Text(student.studentName),
        leading: CircleAvatar(
          backgroundImage: AssetImage(student.photo),
        ),
        trailing: Row(
          // mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Consumer<Student>(
              builder: (cont, studentCons, ch) {
                return GestureDetector(
                  child: Icon(studentCons.isSurveillance
                      ? Icons.star
                      : Icons.star_border),
                  onTap: () {
                    print(studentCons.rollNumberId);
                    studentCons.changeSurveillance();
                    DbHelper.insert("servilance", {
                      'rollno':student.rollNumberId,
                      "name":student.studentName,
                      "photo":student.photo,
                      "mentor":student.mentor,
                      "section":student.section,
                    });
                  },
                );
              },
            ),
             PopupMenuButton(
                    icon: Icon(
                      Icons.more_vert,
                    ),
                    itemBuilder: (_) => [
                      PopupMenuItem(
                        value: 'tel:${student.contactNo}',
                        child: Column(children: <Widget>[
                          Text("Contact No"),
                          Text('${student.contactNo}')
                        ]),
                      ),
                      PopupMenuItem(
                        value: 'tel:${student.parentNo}',
                        child: GestureDetector(
                          child: Column(children: <Widget>[
                            Text("Parent No"),
                            Text('${student.parentNo}')
                          ]),
                        ),
                      ),
                      PopupMenuItem(
                        value: 'mailto:${student.emailId}',
                        child: GestureDetector(

                            child: Text('${student.emailId}')),
                      ),
                      PopupMenuItem(
                        value: 'sms:${student.parentNo}',
                        child: GestureDetector(
                          child: Column(children: <Widget>[
                            Text("Message"),
                            Text('${student.contactNo}')
                          ]),
                        ),
                      ),
                    ],
                    onSelected: (value){
                      DbHelper.insert("recents", {
                        'rollno':student.rollNumberId,
                        "name":student.studentName,
                        "photo":student.photo,
                        "mentor":student.mentor,
                        "section":student.section,
                      });
                      return _lunch(value);


                    }
                ),
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
