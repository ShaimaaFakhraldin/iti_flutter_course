import 'package:flutter/material.dart';
import 'package:flutter_course_app/users_list.dart';

class MyProfile extends StatefulWidget {
  final String routeName = "/MyProfile";
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
   Color ? myColor  =  Colors.grey[100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar:  AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },

        child:
        Container(
          height: 50,
          width: 50,
          color: Colors.red,
          child: Icon(Icons.arrow_back_ios ,color: Colors.white,),
        )),
        elevation: 0,
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Profile"),
      ),
      body:

      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center ,
        children: [
          Container(
            child:Text("any") ,
          ),

         ClipRRect(
           borderRadius:BorderRadius.circular(100) ,
           child: Container(
             height: 150,
             width: 150,
             color: Colors.green,
             child: Image.asset("assets/images/user.png" ,width: 200, height: 200,  fit: BoxFit.fill,),
           ),
         ),
          SizedBox( height: 40 ,),

          Text("My name" ,style: TextStyle( fontSize: 20 ,color: Colors.white ,fontWeight: FontWeight.bold),),
          SizedBox( height: 40 ,),

          Text("My bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bioMy bio " ,style: TextStyle( fontSize: 18 ,color: Colors.white )),
          SizedBox( height: 20 ,),
          Divider( color:  Colors.white, thickness: .3,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             Column(
               children: [
                 Text("55" ,style: TextStyle( fontSize: 15 ,color: Colors.white ),),
                 SizedBox(height: 5,),

                 Text("posts" ,style: TextStyle( fontSize: 15 ,color: Colors.white ),),

               ],
             ),  Column(
               children: [
                 Text("55" ,style: TextStyle( fontSize: 15 ,color: Colors.white ),),
                 SizedBox(height: 5,),

                 Text("Followers" ,style: TextStyle( fontSize: 15 ,color: Colors.white ),),

               ],
             ),  Column(
               children: [
                 Text("55" ,style: TextStyle( fontSize: 15 ,color: Colors.white ),),
                 SizedBox(height: 5,),

                 Text("Following" ,style: TextStyle( fontSize: 15 ,color: Colors.white ),),

               ],
             ),



            ],
          ),
          SizedBox( height: 20 ,),
          Divider( color:  Colors.white, thickness: .3,),

            Container(
             width: 200,
             height: 50,
             alignment: Alignment.center,
             child:    ElevatedButton(
             style: ButtonStyle(
               backgroundColor: MaterialStateProperty.all(myColor)
             ),

                 onPressed: (){
               setState((){
                 myColor = Colors.green ;

               });


             }, child: Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Icon(Icons.person ,color: Colors.black,),
                 Text("Follow " , style: TextStyle (color: Colors.black),)

               ],
             ))
           )


        ],
      ),
    );
  }
}
