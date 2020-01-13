import 'dart:io';


import 'package:path/path.dart' as path;
import 'dart:async';
import 'package:sqflite/sqflite.dart';

class DbHelper{

  //(1)  first i have to get database or either create database

  static Future<Database>myDatabase() async{

    var dbpath =await getDatabasesPath(); // folder of data destionary where databaese store or creat

    return openDatabase(path.join(dbpath,'students.db'),
        onCreate: (db,version){
       db.execute(
           "CREATE TABLE servilance(rollno TEXT PRIMARY KEY,name TEXT,photo TEXT,"
           " mentor TEXT,section TEXT)");
       db.execute(
           "CREATE TABLE recents(rollno TEXT PRIMARY KEY,name TEXT,photo TEXT,"
               " mentor TEXT,section TEXT)");
        },version: 1);
  }

  static Future<void>insert(String table,Map<String,dynamic>data)async{
    final db= await DbHelper.myDatabase();
    db.insert(table, data);
  }

  static Future<List<Map<String,dynamic>>>read(String table)async{
    final db=await DbHelper.myDatabase();
    return db.query(table);
  }

  static Future<void>delete(String table,String rollno)async{
    final db= await DbHelper.myDatabase();
    db.delete(table,where: "rollno =?",whereArgs: [rollno]);
  }

}