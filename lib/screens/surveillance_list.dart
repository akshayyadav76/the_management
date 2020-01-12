import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/students.dart';
import '../widget/surveillance_tile.dart';

import '../provider/recent.dart';


class SurveillanceList extends StatelessWidget {
  static const routeName='/surveillanceList';


  @override
  Widget build(BuildContext context) {
    final surveillanceList =Provider.of<Students>(context,listen: false);
    surveillanceList.dta();
    final list =surveillanceList.servilace;
    print(list);





    return Scaffold(
      appBar: AppBar(title: Text("Surveillance List"),centerTitle: true,),
      body: list.length == 0? Center(child: CircularProgressIndicator())
          :ListView.builder(
          itemCount: list.length,
          itemBuilder: (context,i)=>
              ChangeNotifierProvider.value(
              value:  list[i],
              child: Dismissible(
                key: ValueKey(
                    list[i].rollNumberId),
                  background: Container(color: Colors.red,),
                  direction: DismissDirection.horizontal,
                  child: ListTile(
                    title: Text(list[i].studentName),
                    leading: CircleAvatar(backgroundImage:
                    AssetImage((list[i].photo),)),
                    subtitle: Row(
                      children: <Widget>[
                        Text('Section: ${(list[i].section)}'),
                        Text('Mentor: ${(list[i].mentor)}'),
                      ],
                    ),
                  )),
              )
      ),
    );
  }
}
