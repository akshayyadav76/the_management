import 'package:flutter/foundation.dart';


import 'student.dart';

class Students with ChangeNotifier {
  List<Student> _allStudents = [
    Student(
        rollNumberId: "130044745117",
        studentName: "Aakash Bilgaiyan",
        fatherName: "Suryakant Bilgaiyan",
        motherName: "Anita Bilgayian",
        section: "B",
        category: 'UR',
        dob: '	4/2/1996',
        mentor: 'AB',
        localAddress: 'L/1 Sourabh Colony Near by Main Railway Station Bhopal',
        permanentAddress: '	L/1 Sourabh Colony Near by Main Railway Station Bhopal',
        emailId: 'amritbilgaiyan110@gmail.com',
        contactNo: 7771810031,
        parentNo: 9993508883,
        isSurveillance: false,
      photo: "assets/photos/Aakash Bilgayian.jpg",
    ),
    Student(
        rollNumberId:	'130046960350',
        studentName:	'Aamir Khan',
        fatherName:	'Habib Khan',
        motherName:	'Shaheen',
        section:	'C',
        category:	'AIUR',
        mentor:	'AB',
        emailId:	'khanaamir8737@gmail.com',
        contactNo:	8982232909,
        parentNo:	8982232909,
        isSurveillance:	false,
      photo: 'assets/photos/Aamir Khan.jpg',
      dob: '',
      localAddress: '',
      permanentAddress: '',



    ),
    Student(
        rollNumberId:	'130092919979',
        studentName:	'Aarti',
        fatherName:	'Parmanand',
        motherName:	'Sukhwati',
        section:	'C',
        category:	'OBC',
        dob:	'16/06/1990',
        mentor:	'AK',
        localAddress:	'New Ashoka Garden,Bhopal',
        permanentAddress:	'HN-153/1,ward No-15,Post Misrod,Tehsil Dolariya,Distt.-Hoshangabaad',
        emailId:	'aartikushwaha315@gmail.com',
        contactNo:	7724902832,
        parentNo:	8770311221,
        isSurveillance:	false,
      photo:'assets/photos/Aarti.jpg',

    ),
    Student(
        rollNumberId:	'130074234222',
        studentName:	'Aayushi Pandey',
        fatherName:	'Girish Pandey',
        motherName:	'Prabha Pandey',
        section:	'B',
    category:	'URXF',
    dob:'',
    mentor:	'AB',
    localAddress: '',
    permanentAddress:'',
    emailId:	'aayushi135@gmail.com',
        contactNo:	9755775715,
        parentNo:	9993963448,
        isSurveillance:	false,
      photo: 'assets/photos/Aayushi Pandey.jpg',


    ),
    Student(
        rollNumberId:	'130040279846',
        studentName:	'Aditi Kapoor',
        fatherName:	'Rajesh Kapoor',
        motherName:	'Pooja Kapoor',
        section:	'B',
    category:	'AIUR',
    dob:'',
    mentor:	'AKM',
    localAddress:'',
    permanentAddress:'',
    emailId:	'kapoor25aditi@gmail.com',
        contactNo:	9981327710,
        parentNo:	9981327710,
        isSurveillance:	false,
      photo: 'assets/photos/Aditi Kapoor.jpg',


    ),
  ];

  List<Student> get allStudents {
    return [..._allStudents];
  }
}
