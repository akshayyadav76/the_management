import 'package:flutter/foundation.dart';

class Student with ChangeNotifier{

  String rollNumberId;
  String studentName;
  String fatherName;
  String motherName;
  String section;
  String mentor;
  String category;
  String dob;
  String localAddress;
  String permanentAddress;
  String emailId;
  String photo;
  int contactNo;
  int parentNo;
  bool isSurveillance;

  Student({
   @required this.rollNumberId,
   @required this.studentName,
    this.fatherName,
    this.motherName,
   @required this.section,
   @required this.mentor,
    this.category,
    this.dob,
    this.localAddress,
    this.permanentAddress,
   @required this.emailId,
   @required this.photo,
   @required this.contactNo,
    this.parentNo,
    this.isSurveillance =false,
});

}


