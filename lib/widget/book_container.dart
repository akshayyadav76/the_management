import 'package:flutter/material.dart';
import '../screens/books_list_screen.dart';

class BookContainer extends StatelessWidget {

  final String title;
  final String qty;
  final String imagePath;

  BookContainer(this.title,this.qty,this.imagePath);

  @override
  Widget build(BuildContext context) {
     return InkWell(
       onTap:(){Navigator.of(context).pushNamed(BooksListScreen.routeName05);} ,
       child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(8.0),
        child: Container( 
          height: 100.0,
          width: (MediaQuery.of(context).size.width / 2.0) - 20.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Image.asset(imagePath,
                    fit: BoxFit.cover, width: 50.0, height: 50.0),
              ),
              SizedBox(height: 2.0),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(title,
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 15.0,
                      color: Colors.black,
                    )),
              ),
              SizedBox(height: 3.0),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(qty,
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 15.0,
                        color: Colors.red,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
    ),
     );
  }
}
