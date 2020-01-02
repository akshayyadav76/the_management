import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/students.dart';
import '../widget/surveillance_tile.dart';


class SurveillanceList extends StatelessWidget {
  static const routeName='/surveillanceList';

  @override
  Widget build(BuildContext context) {
    final surveillanceList =Provider.of<Students>(context).surveillanceList();
    return Scaffold(
      appBar: AppBar(title: Text("Surveillance List"),centerTitle: true,),
      body: ListView.builder(
          itemCount: surveillanceList.length,
          itemBuilder: (context,i)=>

              ChangeNotifierProvider.value(
              value:  surveillanceList[i],
              child: SurveillanceTile(),
              )
      ),
    );
  }
}
