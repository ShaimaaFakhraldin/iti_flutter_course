import 'package:flutter/material.dart';
import 'package:flutter_course_app/my_profile.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
 
              height: 200,
            width: 200,
            color: Colors.green,
            child :
                
                Padding(
                  
                  padding: EdgeInsets.all(50),
                  child:  Container( color: Colors.red,
                  
                )
                   



            )
          ),


          // ClipRRect(
          //   borderRadius:BorderRadius.circular(100) ,
          //   child: Container(
          //     height: 150,
          //     width: 150,
          //     color: Colors.green,
          //     child: Image.asset("assets/images/user.png" ,width: 200, height: 200,  fit: BoxFit.fill,),
          //   ),
          //
          // ),
          const SizedBox(height: 30,),
          Padding(padding: const EdgeInsets.symmetric(horizontal:20 ),
            child:   
            
            TextField(
              decoration:  InputDecoration(
                  border:  OutlineInputBorder(borderRadius:  BorderRadius.circular(50)),
                  labelText:  "Email",
                  hintText:  "Enter Email"
              ),

            ),

          ),
          const SizedBox(height: 30,),
          Padding(padding: const EdgeInsets.symmetric(horizontal:20 ),
            child:    TextField(

              decoration:  InputDecoration(
                  border:  OutlineInputBorder(borderRadius:  BorderRadius.circular(50)),
                  labelText:  "Password",
                  hintText:  "Enter Password",
                suffixIcon: Icon(
                  Icons.visibility
                ),
                prefixIcon: Icon(
                    Icons.lock
                ),
              ),

            ),

          ),

         Container(
           margin: EdgeInsets.symmetric(vertical: 50),
           child:  ElevatedButton(onPressed: _onPress, child: Text("Log in"))
         ),
          Text( "Forget password ? ") ,
          const SizedBox( height: 30,),
          InkWell(
            onTap: (){
              print("click");
            // basic
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return MyProfile();
              }

              )) ;

              // named
              // Navigator.pushNamed(context, '/UsersList');

              // Navigator.pop(context);


            },
            child:   Text( "Note member ? Sign up now  ") ,

          )








        ],
      ),

    );
  }
  void _onPress(){

  }
}
