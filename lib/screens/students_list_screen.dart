import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../widget/circular_image.dart';
import '../provider/students.dart';
import '../widget/student_tile.dart';


class StudentsListScreen extends StatefulWidget {
  static const routeName ='/StudentsListScreen';


  @override
  _StudentsListScreenState createState() => _StudentsListScreenState();
}
class _StudentsListScreenState extends State<StudentsListScreen> {
  bool isLoding =false;
  bool intitRun =true;
  bool isStopgGetMore =true;
  String sectionMentor ='All';

  @override
  void didChangeDependencies(){
    if(intitRun){
      setState(() {
        isLoding=true;
      });
    }
    intitRun=false;
    super.didChangeDependencies();
  }
  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final providerData =Provider.of<Students>(context,listen: false,);
    var allList = providerData.allStudents;

   if(allList.length ==0){
     print("now worki");
     if(isStopgGetMore){
       providerData.getData().then((_){
         if(this.mounted){
           setState(() {
             isLoding =false;
             isStopgGetMore =false;
           });
         }

       });

     }
   }

//    providerData.getData().then((_){
//      setState(() {
//
//      });
//    });



    if(sectionMentor =='All'){
      allList =providerData.allStudents;
    }else if(sectionMentor =='A'||sectionMentor=='B'||sectionMentor=='C'){
      allList = providerData.section(sectionMentor);
    }else{
         allList=providerData.mentor(sectionMentor);
    }

    print("working");

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Center(
                child: CircularImage(
                  facultyName: "Dr.PK Chopra",
                  facultyImage: 'assets/faculty_images/dr.jpg',),

            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Expanded(child:
              Center(child: Text('batch 19-21'))),

             PopupMenuButton(
              padding: EdgeInsets.only(right: 30),
               icon: Icon(Icons.filter_list,),
               onCanceled: (){
                 //Navigator.pop(contex);
               },
               onSelected: (selcetd){
               setState(() {
                 sectionMentor ='All';
                 //
               });
               },
               itemBuilder: (context)=>[
                 PopupMenuItem(
                   value: 'All',
                   child: Text('All Students'),
                 ),
                 PopupMenuItem(
                   child: PopupMenuButton(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: <Widget>[
                         Text("Section"),
                         Icon(Icons.arrow_right),
                       ],
                     ),
                     itemBuilder: (context)=>[
                       PopupMenuItem(
                         value: 'A',
                         child: Center(child: Text('A')),),
                       PopupMenuItem(
                         value: 'B',
                         child: Center(child: Text('B')),),
                       PopupMenuItem(
                         value: 'C',
                         child: Center(child: Text('C')),)

                     ],onSelected: (value){
                       print('selctd $value ');
                       setState(() {
                         sectionMentor =value;
                       });

                   },
                   ),

                 ),
//                 PopupMenuItem(child: PopupMenuButton(
//                   child:  Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: <Widget>[
//                       Text("Mentor"),
//                       Icon(Icons.arrow_right),
//                     ],
//                   ),
//                   itemBuilder: (context)=>[
//
//                     PopupMenuItem(
//                       value: 'AB',
//                       child: Text('AB'),
//                     ),
//                     PopupMenuItem(
//                       value: 'AK',
//                       child: Text('Ak'),
//                     ),
//                     PopupMenuItem(
//                       value: 'AKM',
//                       child: Text('AkM'),
//                     ),
//                     PopupMenuItem(
//                       value: 'AM',
//                       child: Text('AM'),
//                     ),
//                     PopupMenuItem(
//                       value: 'CC',
//                       child: Text('CC'),
//                     ),
//                     PopupMenuItem(
//                       value: 'DT',
//                       child: Text('DT'),
//                     ),
//                     PopupMenuItem(
//                       value: 'PS',
//                       child: Text('PS'),
//                     ), PopupMenuItem(
//                       value: 'MM',
//                       child: Text('MM'),
//                     ),
//                     PopupMenuItem(
//                       value: 'MJ',
//                       child: Text('MJ'),
//                     ),
//                   ],onSelected: (value){
//                     setState(() {
//                       sectionMentor =value;
//                     });
//                 },
//                 ),)
               ],
             ),

            ],),
            Expanded(
                child:allList.length ==0 ?Center(
                    child: CircularProgressIndicator()): ListView.builder(
                  itemCount: allList.length,
                    itemBuilder: (context,i){
                    print(allList[2].rollNumberId);
                    return ChangeNotifierProvider.value(
                      value: allList[i],
                      child:  StudentTile(
                      ),
                    );
                    }),
            ),
          ],
        ),
      ),
    );
  }
}
