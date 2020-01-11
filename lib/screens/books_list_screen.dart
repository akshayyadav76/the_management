import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_management/widget/book_container.dart';

import '../provider/students.dart';

class BooksListScreen extends StatelessWidget {
  static const routeName05 = '/bookslistscreen';

  @override
  Widget build(BuildContext context) {

    final Map seriesName = ModalRoute.of(context).settings.arguments;

    final seriesBooksData =
        Provider.of<Students>(context, listen: false).series(
            seriesName["title"],seriesName['filterName']
        );
    print("mb series data ${seriesBooksData.length}");

    return Scaffold(
      appBar: AppBar(
        title: Text("${seriesName["title"]} Series Books"),centerTitle: true,
         backgroundColor: Colors.yellow[600],
      ),
      body: Stack(
        children: <Widget>[

          Positioned(
            bottom: 50.0,
            right: 100.0,
            child: Container(
              width: 400.0,
              height: 400.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200.0),
                  color: Colors.yellow[400].withOpacity(0.5)),
            ),
          ),
          Positioned(
            bottom: 100.0,
            left: 150.0,
            child: Container(
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200.0),
                  color: Colors.yellow[400].withOpacity(0.5)),
            ),
          ),
              GridView.builder(

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  childAspectRatio: 2 / 2),
              itemCount: seriesBooksData.length,
              itemBuilder: (context, i) {
                return Card(
                  elevation: 5,
                  child: GridTile(
                    header: Center(

                        child: Text(seriesBooksData[i]["Title"],style: TextStyle(
                        ),)

                    ),
                    footer: GridTileBar(
                      backgroundColor: Colors.black54,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text('Subject'),
                                Text(seriesBooksData[i]["Subject_Title"]== null?"Not Available":
                                seriesBooksData[i]["Subject_Title"]),

                              ],
                            ),
                          ),
//                      SizedBox(
//                        width: 5,
//                      ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text("builisher"),
                                Text(seriesBooksData[i]["Publisher_Name"]),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                            height: 120,
                            width: 120,
                            child: Image.asset(
                              'assets/books_icon.png',
                              fit: BoxFit.contain,
                            )),
                        Text(seriesBooksData[i]['AuthorName1']== null?"Not Available":
                        seriesBooksData[i]['AuthorName1']),
                      ],
                    ),
                  ),
                );
              }),
            ],
      ),
    );
  }
}
