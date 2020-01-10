import 'package:flutter/material.dart';

import '../widget/book_container.dart';


class LibraryDashbordScreen extends StatelessWidget {
  static const routeName04 ='/libraryscreen';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 280.0,
                    width: double.infinity,
                    color: Colors.yellow[700],
                  ),
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
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            width: 75.0,
                            height: 75.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                image: DecorationImage(
                                    image: AssetImage('assets/ocmlogo.png'))),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('OCM',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Quicksand',
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold)),
                              Text('Library',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Quicksand',
                                      fontSize: 20.0))
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 230.0,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25.0,
                      ),

                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              BookContainer(
                                  'MB', '5', 'assets/series_icon/economics.png'),
                              BookContainer(
                                   'MC', '2', 'assets/series_icon/computer.png'),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              BookContainer('MG', '8', 'assets/series_icon/law.png'),
                              BookContainer('AK', '0', 'assets/series_icon/calculator.png'),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),


              SizedBox(height: 10.0,),
            ],
          )
        ],
      ),
    );
  }



}
