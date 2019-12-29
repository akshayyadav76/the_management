import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  final styel =TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
           currentAccountPicture: Image.asset('assets/ocmlogo.png'),
            accountName: Text("Oriental College of Management",style: styel,),
            accountEmail: Text("Directorocm@oriental.ac.in",style: styel,),

             decoration: BoxDecoration(
               image: DecorationImage(fit: BoxFit.fill,
                   image: AssetImage('assets/ocm.jpg',))
             ),
          ),

          ListTile(title: Text("Visit Website"),),
          ListTile(title: Text("Servilas LIst"),),
          ListTile(title: Text("something realated to library"),),
          ListTile(title: Text("image of college number"),),

        ],
      ),
    );
  }
}
