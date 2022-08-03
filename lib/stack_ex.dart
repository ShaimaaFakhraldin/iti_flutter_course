import 'package:flutter/material.dart';

class StackEx extends StatefulWidget {
  const StackEx({Key? key}) : super(key: key);

  @override
  State<StackEx> createState() => _StackExState();
}

class _StackExState extends State<StackEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Container(
            width: double.infinity,
          height: double.infinity,

          child:
      Stack(
        children: [
          Positioned.fill(child: Container(

            color: Colors.yellow,
            child: Text("Container 1"),
          ),),



          Positioned(
            top: 100,
            child:  Container(
            height: 200,
            width: 200,
            color: Colors.green,
            child: Text("Container 2"),
          ),),
          Positioned.fill(

            child:
                Center(
                  child:
          Container(
            height: 400,
            width: 400,
            color: Colors.red,
            child: Text("Container 3"),
          )),),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 300,
              width: 300,
              color: Colors.orange,
              child: Text("Container 2"),
            ),

          ),
          PositionedDirectional(
            start: 30,
            child:Container(
            height: 100,
            width: 100,
            color: Colors.cyan,
            child: Text("Container 2"),
          ), )





        ],
      )),
    );
  }
}
