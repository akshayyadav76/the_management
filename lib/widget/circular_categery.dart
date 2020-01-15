import 'package:flutter/material.dart';


import '../screens/books_list_screen.dart';



class CircularCategory extends StatelessWidget {
  final String searchName;
  final String filterColumnName;

  CircularCategory(this.searchName,this.filterColumnName);

  @override
  Widget build(BuildContext context){
    return GestureDetector(
        onTap:(){
          Navigator.of(context).pushNamed(BooksListScreen.routeName05,arguments: {
            "filerColumnName":filterColumnName,
            'searchName':searchName
          }
            ,);} ,
        child: Column(
          children: <Widget>[
            Card(
              elevation: 3,
              shape: CircleBorder(
                side: BorderSide(
                  style: BorderStyle.none,
                ),
              ),
              child: Container(
                  height: 90,
                  width: 90,
                  alignment: Alignment.center,
                  child: CircleAvatar(child: FittedBox(child: Text(searchName)),
                    radius: 50,
                    backgroundColor: Colors.amberAccent[200],
                  )),
            ),
          ],
        ));
  }
}
