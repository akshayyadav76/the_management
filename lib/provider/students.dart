import 'package:flutter/foundation.dart';

import '../model/student.dart';

class Students with ChangeNotifier{

  List<Student> _allStudents =[
    Student(),

  ];


  List<Student> get allStudents {
    return [..._allStudents];
  }


}