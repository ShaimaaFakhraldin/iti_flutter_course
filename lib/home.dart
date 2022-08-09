import 'package:flutter/material.dart';
import 'package:flutter_course_app/local_data/sqil/database_helper.dart';
import 'package:flutter_course_app/my_profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final dbHelper = DatabaseHelper.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(),
      drawer: Drawer(
        child: Column(
          children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.red
          ),

            child:
           Text(" hi there")


       ) ,
       InkWell(
         onTap: (){
           Navigator.pop(context);
           Navigator.push(context, MaterialPageRoute(builder: (context){
             return MyProfile();
           }));
         },
         child:  Container(
           height: 50,
           width: double.infinity,
           color: Colors.green,
           child: Text(" page one"),
         )     ,
       ),



            Container(
              color: Colors.yellow,
              child: Row(
                children: [
                  Icon(Icons.add),
                  Text("page 2")

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
