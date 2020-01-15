import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import '../provider/recent.dart';

import './student.dart';

class Students with ChangeNotifier {

  List<Student> _allStudents = [];
  List<dynamic>_booksData=[];
  List<Student>_servilace=[];
  List<Student>_recentList=[];


  Future<void>getData()async {
  //  try{
    final url = 'https://top-drawer-objects.000webhostapp.com/con.php';
    final response = await http.get(url);
    final resolveData = json.decode(response.body);
//    print(resolveData.length);
//   print(response.statusCode);
   List<Student>httpList=[];
    for (int i = 0; i < resolveData.length; i++) {
      var addInLIst = Student(
        sNo: resolveData[i]['sNO'],
        rollNumberId: resolveData[i]['rollNumberId'],
        studentName: resolveData[i]['studentName'],
        fatherName: resolveData[i]['fatherName'],
        motherName: resolveData[i]['motherName'],
        section: resolveData[i]['section'],
        category: resolveData[i]['category'],
        dob: resolveData[i]['dob'],
        mentor: resolveData[i]['mentor'],
        localAddress: resolveData[i]['localAddress'],
        permanentAddress: resolveData[i]['permanentAddress'],
        emailId: resolveData[i]['emailId'],
        contactNo: resolveData[i]['contactNo'],
        parentNo: resolveData[i]['parentNo'],
        //isSurveillance:	resolveData[i]['isSurveillance'] as bool,//mysql boolan error will be soved leater
        photo: resolveData[i]['Photo'],
      );
      httpList.add(addInLIst);
    }
    _allStudents=httpList;
    notifyListeners();
    print(httpList.length);
  }

  
  List<Map<String,dynamic>>get booksData{
    return [..._booksData];
  }

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

  List<Student>get servilace {
    return [..._servilace];
  }
  Future<void>dta()async{
    final servilanceLIst =  await DbHelper.read("servilance");
    _servilace= servilanceLIst.map((data){
       return Student(
         rollNumberId:data['rollno'],
         studentName: data['name'],
         photo: data['photo'],
         mentor: data['mentor'],
         section: data['section'],
       );
     }).toList();
     notifyListeners();

    print('database read $servilanceLIst');
    print('database read ${_servilace.length}');

  }

  Future<void>delete(String table,String rollno)async{
   await DbHelper.delete(table, rollno);
  }



  //----books methoes-----------

  Future<void>getBooks()async{
    final url ='https://top-drawer-objects.000webhostapp.com/books.php';
    final booksJson=await http.get(url);
    final reposedData =json.decode(booksJson.body);
    _booksData=reposedData ;
    notifyListeners();

//    print(reposedData);
  }

  List<dynamic>series(String filterColumnName,String searchName){
    //print("serite boooks lgnth now${_booksData[0]}");
    return _booksData.where((data){  //return not added here
      return data[filterColumnName]== searchName;
    }).toList();
  }

  //------------------recents methods

  List<Student>get recents {
    return [..._recentList];
  }
  Future<void>recentsLIst()async{
    final recentsListGet =  await DbHelper.read("recents");
    _recentList= recentsListGet.map((data){
      return Student(
        rollNumberId:data['rollno'],
        studentName: data['name'],
        photo: data['photo'],
        mentor: data['mentor'],
        section: data['section'],
      );
    }).toList();
    notifyListeners();

    print('database read $recentsListGet');
    //print('database read ${_servilace.length}');

  }

  Future<void>recentDelete(String table,String rollno)async{
    await DbHelper.delete(table, rollno);
  }



}
