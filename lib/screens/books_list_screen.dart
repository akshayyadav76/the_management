import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/students.dart';

class BooksListScreen extends StatelessWidget {
  static const routeName05 = '/bookslistscreen';



  @override
  Widget build(BuildContext context) {
    final seriesName= ModalRoute.of(context).settings.arguments;
    final seriesBooksData = Provider.of<Students>(context,listen: false).series(seriesName);
    print("mb series data ${seriesBooksData}");

    return Scaffold(
      appBar: AppBar(
        title: Text('ss'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 2 / 2),
          itemCount: 10,
          itemBuilder: (context, i) {
            return GridTile(
              header: GridTileBar(
                title: Text("the trueh"),
                backgroundColor: Colors.black54,
              ),
              footer: GridTileBar(
                backgroundColor:Colors.black54,
                title: Text("ssfe"),),
              child: Image.asset('assets/books_icon.png',fit: BoxFit.fill,),
            );
              
              
//              Card(
//                child: Column(
//              children: <Widget>[
//                Text("the truth"),
//                Expanded(
//                  child: Stack(
//                    fit: StackFit.values[1],
//                    children: <Widget>[
//                      Image.asset(
//                        'assets/books_icon.png',
//                        fit: BoxFit.contain,
//                      ),
//                      Container(
//                          alignment: Alignment.center,
//                          margin: EdgeInsets.only(top: 15),
//                          child: Text(
//                            "By Sanker ",
//                          )),
//                    ],
//                  ),
//                ),
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                  Column(
//                    children: <Widget>[
//                    Text('Subject'),
//                    Text("finance"),
//                  ],),
//                  SizedBox(width: 5,),
//                  Column(
//                    children: <Widget>[
//                      Text('Subject'),
//                      Text("finance"),
//                    ],),
//                ],),
//              ],
//            ));
          }),
    );
  }
}
