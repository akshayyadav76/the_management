import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_management/provider/students.dart';



class AttandenceScreen extends StatelessWidget {
static const attandanceRoutName = '/attantancescreen';


Map<String,dynamic> sendJson = {
  "subject":"sdf",
  
};

  @override
  Widget build(BuildContext context) {
    Provider.of<Students>(context).PostAttandance(sendJson);
    return Scaffold(
      appBar: AppBar(title: Text("file attnadance"),
      ),
    );
  }
}
