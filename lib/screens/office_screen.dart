import 'package:flutter/material.dart';


class OfficeScreen extends StatelessWidget {
  static const route = '/officeScreen';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
              child: Stack(
                  children: <Widget>[
                    Container(
                      height: 280.0,
                      width: double.infinity,
                      color: Colors.yellow[700],
                    ),
                    Positioned(
                      top: 10.0,
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
                      //top: 10.0,
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
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold)),
                                Text('Office',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 24.0))
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
                                officeConatainer(
                                  context,  'Attendence', 'assets/series_icon/economics.png',),
                                 officeConatainer(
                                  context,  'Paf Maker', 'assets/series_icon/economics.png',),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                officeConatainer(
                                  context,  'File', 'assets/series_icon/economics.png',),
                                 officeConatainer(
                                  context,  'Call', 'assets/series_icon/economics.png',),
                              ],
                            ),
                            SizedBox(height: 5,),
                            // GestureDetector(
                            //   onTap: (){
                            //     Navigator.of(context).pushNamed(ErpLoginScreen.routName03,
                            //     arguments: 'http://164.100.247.30/');
                            //   },
                            //   child: Material(
                            //     elevation: 5.0,
                            //     borderRadius: BorderRadius.circular(20.0),
                            //     child: Container(
                            //       height: 70.0,
                            //       width: (MediaQuery.of(context).size.width / 1.0) - 100.0,
                            //       child:
                            //           Image.asset('assets/delnet_logo.jpg',
                            //                 fit: BoxFit.fill,),

                            //     ),
                            //   ),
                            // ),



                          ],
                        ),

                      ],
                    )
                  ],
                ),
      ),

    );
  }

    Widget officeConatainer(BuildContext context,String attendance,String image,) {
     return InkWell(
       onTap:(){
        
           } ,
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
                child: Image.asset('assets/books_icon.png',
                    fit: BoxFit.cover, width: 50.0, height: 50.0),
              ),
              SizedBox(height: 2.0),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(attendance,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    )),
              ),
              SizedBox(height: 3.0),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text('',
                    style: TextStyle(
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