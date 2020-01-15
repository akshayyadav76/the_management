import 'package:flutter/material.dart';


import '../screens/books_list_screen.dart';



class CircularCategory extends StatelessWidget {
  final String categoryName;
  final filerName;

  CircularCategory(this.filerName,this.categoryName);

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){Navigator.of(context).pushNamed(BooksListScreen.routeName05,arguments: {
        'title':filerName,
        'filerName':categoryName
      });},
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
                  child: CircleAvatar(child: FittedBox(child: Text(categoryName)),
                    radius: 50,
                    backgroundColor: Colors.amberAccent[200],
                  )),
            ),
          ],
        ));
  }
}
