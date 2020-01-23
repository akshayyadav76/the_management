import 'package:flutter/material.dart';

import '../provider/students.dart';
import 'package:provider/provider.dart';
import '../widget/student_tile.dart';
import '../screens/mentorscreens/attandance_screen.dart';



class MentorScreen extends StatefulWidget {
  static const routeName05='/mentorscreen';

  @override
  _MentorScreenState createState() => _MentorScreenState();
}

class _MentorScreenState extends State<MentorScreen> {
bool isStopgGetMore =true;
bool isLoding = true;

  @override
  Widget build(BuildContext context) {
    final mentorName =ModalRoute.of(context).settings.arguments;
  final list=  Provider.of<Students>(context,listen: false);
   var allList =list.allStudents;
       var menterList= list.mentor(mentorName);

    if(allList.length ==0){
      print("now worki");
      if(isStopgGetMore){
        list.getData().then((_){
          if(this.mounted){
            setState(() {
              isLoding =false;
              isStopgGetMore =false;
            });
          }

        });

      }
    }

    return Scaffold(
      appBar: AppBar(title:  Text("attandeance"),),

      body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10),
              height: 100,
              child: Column(children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                GestureDetector(
                  child:
                  boxConatainer( 'attendance', 20.0 ),
                  onTap: (){
                    Navigator.of(context).pushNamed(AttandenceScreen.attandanceRoutName);
                
                  },

                ),
               
                   boxConatainer( 'Review Attendane', 18.3),
                ],),
              ],),
            ),
          
            Expanded(
              child: menterList.length ==0 ? Center(child: CircularProgressIndicator(),)
                  : ListView.builder(
               itemCount: menterList.length,
                  itemBuilder: (context,i){
                 return ChangeNotifierProvider.value(
                     value: menterList[i],
                   child: StudentTile(),
                 );
                  }),
            ),

          ],
        ),
      
    );
  }

   Widget boxConatainer(String attendance, double size) {
     return InkWell(
       
       child: Material(
         color: Colors.yellow[400],
        elevation: 5.0,
        borderRadius: BorderRadius.circular(8.0),
        child: Container( 
          height: 50.0,
          width: (MediaQuery.of(context).size.width / 2.0) - 20.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(attendance,
                textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: size,
                      color: Colors.black,
                    )),
              ),
            
            ],
          ),
        ),
    ),
     );
  }
}
