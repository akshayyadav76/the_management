import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {

  final facultyName;
  final facultyImage;
  //Function getData;
  CircularImage({this.facultyName,this.facultyImage});

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
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          facultyImage),
                    )),
              ),

            FittedBox(
              fit: BoxFit.fill,
                child: Text(facultyName)),
          ],
        ));
  }
}
