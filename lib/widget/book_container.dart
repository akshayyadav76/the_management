import 'package:flutter/material.dart';

class BookContainer extends StatelessWidget {

  double left;
  double right;
  String series;


  BookContainer(this.right,this.left,this.series);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Text(series),//color: Colors.blue,
      decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.horizontal(right: Radius.circular(right),left: Radius.circular(left)
          )),);
  }
}
