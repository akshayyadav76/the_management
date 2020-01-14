import 'package:flutter/material.dart';

import '../screens/surveillance_list.dart';
import '../screens/erp_login_screen.dart';
import '../screens/library_dadhboard_screen.dart';


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

          ListTile(title: Text("Login To ERP"),onTap: (){
            Navigator.of(context).pushNamed(ErpLoginScreen.routName03);
          },),
          ListTile(title: Text("Servilas LIst"),onTap: (){
            Navigator.of(context).pushNamed(SurveillanceList.routeName);
          },),
          ListTile(title: Text("Library"),onTap: (){
            Navigator.of(context).pushNamed(LibraryDashbordScreen.routeName04);
          },),
          ListTile(title: Text("image of college number"),),

        ],
      ),
    );
  }
}
