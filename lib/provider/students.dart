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
    Student(
        rollNumberId:	'130035781906',
        studentName:	'Afreen Ansari',
        fatherName:	'Shamim Ansari',
        motherName:	'Naseema Khatun',
        section:	'A',
    category:	'OBCXF',
    dob:'',
    mentor:	'CC',
    localAddress:'',
    permanentAddress:'',
    emailId:	'afreenansari1999@gmail.com',
        contactNo:	9753488900,
        parentNo:	9425628688,
        isSurveillance:	false,
      photo: 'assets/photos/Afreen Ansari.jpg',


    ),
    Student(
        rollNumberId:	'130045597721',
        studentName:	'Akansha Zade',
        fatherName:	'Basantu Zade',
        motherName:'Bina Zade',
        section:	'A',
    category:	'OBCXF',
    dob:'',
    mentor:	'DT',
    localAddress:'',
    permanentAddress:'',
    emailId:	'akshuzade19@gmail.com',
        contactNo:	6264494892,
        parentNo:	9893852438,
        isSurveillance:	false,
      photo: 'assets/photos/Akansha Zade.jpg'


    ),
    Student(
        rollNumberId:	'130056585835',
        studentName:	'Aakash Malviya',
        fatherName:	'Badri Prasad Malviya',
        motherName:	'Imrat Malviya',
        section:	'C',
    category:	'SCXOP',
    dob:'',
    mentor:	'AKM',
        localAddress:'',
        permanentAddress:'',
        emailId:	'appandey9893@gmail.com',
    contactNo:	7987247748,
    parentNo:	9893215737,
    isSurveillance:	false,
      photo: 'assets/photos/Aakash Malviya.jpg',

    ),
    Student(
        rollNumberId:	'130073223963',
        studentName:	'Akash Pandey',
        fatherName:	'Viresh Pandey',
        motherName:	'Mohini Pandey',
        section:	'B',
    category:	'UR',
    dob:	'12/6/1997',
        mentor:	'AM',
        localAddress:	'Patel nager,Bhopal',
        permanentAddress:	'Satna',
    emailId:	'apandey9893@gmail.com',
    contactNo:	9399043643,
        parentNo:	9893215737,
        isSurveillance:	false,
      photo: 'assets/photos/Akash Pandey.jpg'

    ),
    Student(
        rollNumberId:	'MP03103494',
        studentName:	'Akash Suryawanshi',
    fatherName:	'Suresh Suryawanshi',
    motherName:	'Kiran Suryawanshi',
    section:	'A',
    category:	'OBC',
    dob:	'3/2/1998',
    mentor:	'MJ',
    localAddress:	'Jail Road,Rahim Gali, Gadari Mohalla,Ward No 12 Seoni Malwa ,Hoshagabad',
        permanentAddress:	'Bharti Niketan,Near Chetak Bridge,Bhopal',
        emailId:	'iakash1998awya@gmail.com',
    contactNo:	9806406241,
    parentNo:	9977915281,
        isSurveillance:	false,
      photo: 'assets/photos/no photo boy.jpg'


    ),
    Student(
        rollNumberId:	'130040522770',
        studentName:	'Akhilesh Pandey',
        fatherName:	'Vijay Pandey',
        motherName:	'Shyam Vati Pandey',
        section:	'B',
    category:	'AIUR',
    dob:'',
    mentor:	'CC',
        localAddress:'',
        permanentAddress:'',
        emailId:	'akhileshpandey054@gmail.com',
    contactNo:	7974944227,
    parentNo:	7024597583,
    isSurveillance:	false,
    photo: 'assets/photos/Akhilesh Pandey.jpg',
    ),
    Student(
        rollNumberId:	'130041213600',
        studentName:	'Aman Singh Parihar',
    fatherName:'Ashok Singh Parihar',
    motherName:	'Shikha Singh',
        section:	'B',
        category:	'AIUR',
        dob:'',
        mentor:	'DT',
    localAddress:'',
    permanentAddress:'',
    emailId:	'sarkaramanparihar@gmail.com',
    contactNo:	7999935009,
    parentNo:	7999714824,
    isSurveillance:	false,
      photo: 'assets/photos/Aman Singh Parihar.jpg'

    ),
    Student(
        rollNumberId:	'130045471555',
        studentName:	'Ambika Dhadse',
        fatherName:	'Dileep Dhadse',
        motherName:	'Sushila Dhadse',
        section:	'A',
    category:	'OBCXF',
    dob:'',
    mentor:	'MM',
    localAddress:'',
    permanentAddress:'',
    emailId:	'dhadseambika99@gmail.com',
        contactNo:	8309752164,
        parentNo:	9406937198,
        isSurveillance:	false,
      photo: 'assets/photos/Ambika Dhadse.jpg'

    ),
    Student(
        rollNumberId:	'130104803204',
        studentName:	'Ambika Singh',
        fatherName:	'Suresh Singh',
        motherName:'	Meera Singh',
        section:	'C',
    category:	'URXF',
    dob:'',
    mentor:	'AM',
    localAddress:'',
    permanentAddress:'',
    emailId:	'singhambika707@gmail.com',
        contactNo:	9713835918,
        parentNo:	9584113844,
        isSurveillance:	false,
      photo: 'assets/photos/Ambika Singh.jpg'
    ),
    Student(
        rollNumberId:	'MP01100676',
        studentName:'Amisha Sahu',
    fatherName:	'Prem Shankar Sahu',
    motherName:	'Pushpa Sahu',
    section:	'B',
    category:	'OBCXF',
    dob:'',
        mentor:	'MJ',
        localAddress:'',
        permanentAddress:'',
        emailId:	'sahuamisha8@gmail.com',
    contactNo:	7415756527,
    parentNo:	7879362771,
        isSurveillance:	false,
      photo: 'assets/photos/no photo girl.jpg'

    ),
  ];

  List<Student> get allStudents {
    return [..._allStudents];
  }

  List<Student> section(String section){
    return _allStudents.where((list){
      return list.section ==section;}).toList();
  }

  List<Student> mentor(String mentor){
    return _allStudents.where((list){
      return list.mentor ==mentor;}).toList();
  }
  List<Student>surveillanceList(){
    return _allStudents.where((list)=>list.isSurveillance).toList();
  }


}
