import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../provider/students.dart';

class BooksListScreen extends StatefulWidget {
  static const routeName05 = '/bookslistscreen';


  @override
  _BooksListScreenState createState() => _BooksListScreenState();
}

class _BooksListScreenState extends State<BooksListScreen> {
  bool check=true;
  @override
  Widget build(BuildContext context) {
    print(check);


    final Map mapValues = ModalRoute.of(context).settings.arguments;
    final seriesBooksData = Provider.of<Students>(context, listen: false);
    var getbooks =[];

    if(getbooks.length == 0){
      Provider.of<Students>(context,listen: false).getBooks().then((context){
        setState(() {
          getbooks= seriesBooksData.series(mapValues['filerColumnName'], mapValues['searchName']);
        });
      });
    }


   // print("mb series data ${seriesBooksData.}");

    return Scaffold(
      appBar: AppBar(
        title: Text("${mapValues["searchName"]} Series"),centerTitle: true,
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
              getbooks.length ==0 ? Center(child: CircularProgressIndicator(),)
                  :GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  childAspectRatio: 2 / 2),
              itemCount: getbooks.length,
              itemBuilder: (context, i) {
                return Card(
                  elevation: 5,
                  child: GridTile(
                    header: Center(

                        child: Text(getbooks[i]["Title"],style: TextStyle(
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
                                Text(getbooks[i]["Subject_Title"]== null?"Not Available":
                                getbooks[i]["Subject_Title"]),

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
                                Text(getbooks[i]["Publisher_Name"]),
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
                        Text(getbooks[i]['AuthorName1']== null?"Not Available":
                        getbooks[i]['AuthorName1']),
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
