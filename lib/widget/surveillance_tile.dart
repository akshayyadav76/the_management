import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/student.dart';


class SurveillanceTile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final sruvilance=Provider.of<Student>(context);

    return ListTile(
      title: Text(sruvilance.studentName),
      leading: CircleAvatar(backgroundImage: AssetImage(sruvilance.photo),),
      subtitle: Row(
        children: <Widget>[
          Text('Section: ${sruvilance.section}'),
          Text('Mentor: ${sruvilance.mentor}'),
        ],
      ),
    );
  }
}
