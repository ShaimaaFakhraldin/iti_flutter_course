import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformExample extends StatefulWidget {
  const TransformExample({Key? key}) : super(key: key);

  @override
  State<TransformExample> createState() => _TransformExampleState();
}

class _TransformExampleState extends State<TransformExample>  with SingleTickerProviderStateMixin{
  late AnimationController animationController ;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this , duration:  const Duration(milliseconds: 1000));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title:  Text( "Transform"),
      ),
      floatingActionButton:  FloatingActionButton(
        child:  Icon(
          Icons.play_arrow ,
              size: 20,
        ),


        onPressed: (){
          if(animationController.isDismissed){
            animationController.forward();
            setState((){

            });
          }else{
            animationController.reverse();
            setState((){

            });
          }

        },
      ),
      body:  Center(
        child:AnimatedBuilder(
          animation: this.animationController,
          builder: (context, child) {
            return transForm();
          },
        )
      )

    );
  }
  Widget rotate(){
    return
      Transform.rotate(
        alignment: Alignment.bottomCenter,
        angle: (25 / (180 / math.pi)) * animationController.value, // 45 deg
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
          child: Text("show"),
        ),
      );
  }

  Widget scale(){
    return Transform.scale(
      scale: 1.5*animationController.value,
      child:  Container(
        width: 200,
        height: 200,
        color: Colors.red,
        child: Text("show"),
      ),
    );
  }
  Widget translate (){
     return Transform.translate(offset: Offset(100 *animationController.value ,0.0),
       child:  Container(
       width: 100,
       height: 100,
       color: Colors.red,
       child: Text("show"),
     ),
     );
  }
  Widget transForm(){
    return Transform(transform: Matrix4.skew(.3 ,.3),child:
      Container(
      width: 100,
      height: 100,
      color: Colors.red,
      child: Text("show"),
    ),


    );
  }





}
