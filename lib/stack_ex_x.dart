import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {
  const StackExample({Key? key}) : super(key: key);

  @override
  State<StackExample> createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("Example"),
      ),
      body: _body(context),

    );
  }

  Widget _body(BuildContext context){
    return Center(
      child:  Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: 350,
            height: 350,
            decoration: BoxDecoration(
              color:  Colors.pink,
              shape:  BoxShape.circle
            ),
          ),
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                color:  Colors.orange,
                shape:  BoxShape.circle
            ),

          ),
          Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
                color:  Colors.amber,
                shape:  BoxShape.circle
            ),

          ),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                color:  Colors.yellow,
                shape:  BoxShape.circle
            ),

          ),
        ],

      ),
    );

  }
}
