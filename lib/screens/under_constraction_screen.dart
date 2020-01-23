import 'package:flutter/material.dart';


class UnderConstraction extends StatelessWidget {

static const constarction = '/constraction';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text("under constraction"),),
      body: Center(child:Text("This Page is Under Constraction",textAlign: TextAlign.center,
      style: TextStyle(fontSize: 50),)),
    );
  }
}