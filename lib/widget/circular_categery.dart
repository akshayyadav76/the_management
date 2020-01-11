import 'package:flutter/material.dart';



class CircularCategory extends StatelessWidget {
  final String categoryName;
  final filerName;

  CircularCategory(this.categoryName,this.filerName);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                  child: CircleAvatar(child: Text(categoryName),
                    radius: 50,
                    backgroundColor: Colors.amberAccent,
                  )),
            ),
          ],
        ));
  }
}
