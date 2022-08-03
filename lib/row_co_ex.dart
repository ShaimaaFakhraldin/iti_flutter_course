import 'package:flutter/material.dart';

class LayoutEx extends StatefulWidget {
  const LayoutEx({Key? key}) : super(key: key);

  @override
  State<LayoutEx> createState() => _LayoutExState();
}

class _LayoutExState extends State<LayoutEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(color: Colors.lightBlue, child: uiCo()));
  }

  Widget uiRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.green),
            child: Text("child 1"),
          ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.green),
          child: Text("child 2"),
        ),
        Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.green),
          child: Text("child 3"),
        ),
      ],
    );
  }

  Widget uiCo() {
    return Container(
        height: MediaQuery.of(context).size.height * .50,
        color: Colors.yellow,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green),
                child: Text("child 1"),
              ),
            ),
            Expanded(
                child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.green),
              child: Text("child 2"),
            )),
            Expanded(
                child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.green),
              child: Text("child 3"),
            )),
          ],
        ));
  }
}
