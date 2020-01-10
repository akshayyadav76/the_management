import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/students.dart';

class BooksListScreen extends StatelessWidget {
  static const routeName05 = '/bookslistscreen';

  @override
  Widget build(BuildContext context) {
    final seriesName = ModalRoute.of(context).settings.arguments;

    final seriesBooksData =
        Provider.of<Students>(context, listen: false).series(seriesName);
    print("mb series data ${seriesBooksData.length}");

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
          itemCount: seriesBooksData.length,
          itemBuilder: (context, i) {
            return Card(
              elevation: 5,
              child: GridTile(
                header: Center(

                    child: Text(seriesBooksData[i]["Title"])),
                footer: GridTileBar(
                  backgroundColor: Colors.black54,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(seriesBooksData[i]["Subject_Title"]),
                          Text(seriesBooksData[i]["Publisher_Name"]),
                        ],
                      ),
//                      SizedBox(
//                        width: 5,
//                      ),
                      Column(
                        children: <Widget>[
                          Text('Subject'),
                          Text("finance"),
                        ],
                      ),
                    ],
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                        height: 150,
                        width: 150,
                        child: Image.asset(
                          'assets/books_icon.png',
                          fit: BoxFit.contain,
                        )),
                    Text(seriesBooksData[i]['AuthorName1']),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
