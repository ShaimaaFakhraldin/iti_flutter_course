import 'package:flutter/material.dart';

class BlogDetail extends StatefulWidget {

  @override
  _BlogDetailState createState() => _BlogDetailState();
}

class _BlogDetailState extends State<BlogDetail> with SingleTickerProviderStateMixin {
 late AnimationController animationController;
 late Animation imageAnimation;
 late Animation titleAnimation;
 late Animation postAnimation;


  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 5));

    imageAnimation = Tween(begin: -1.0, end: 0.0)
        .animate(CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn));

    titleAnimation = Tween(begin: -1.0, end: 0.0)
        .animate(CurvedAnimation(parent: animationController, curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));

    postAnimation = Tween(begin: -1.0, end: 0.0)
        .animate(CurvedAnimation(parent: animationController, curve: const Interval(0.8, 1.0, curve: Curves.fastOutSlowIn)));

    animationController.forward();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget? child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Blog Detail'),
              backgroundColor: Colors.grey,
              centerTitle: true,
            ),
            body: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Transform(
                      transform: Matrix4.translationValues(
                          imageAnimation.value * width, 0.0, 0.0),
                      child: Container(
                        padding: const EdgeInsets.only(left: 10.0),
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.4,
                        decoration: const BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('assets/blog-image.jpg'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                    Transform(
                      transform: Matrix4.translationValues(
                          titleAnimation.value * width, 0.0, 0.0),
                      child: Container(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.4,
                        padding: const EdgeInsets.all(40.0),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.5)
                        ),
                        child: const Center(
                          child: Text('Lorem Ipsum Dolor', style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),),
                        ),
                      ),
                    ),
                  ],
                ),
                Transform(
                  transform: Matrix4.translationValues(
                      postAnimation.value * width, 0.0, 0.0),
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    padding: const EdgeInsets.all(40.0),

                    child: const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                          'Duis gravida efficitur nisl, vel ultrices augue pretium id. '
                          'Duis sit amet magna et justo condimentum tincidunt. '
                          'Aliquam maximus dolor a massa interdum tempus ac sit amet eros. ',
                      style: TextStyle(fontSize: 22.0),

                    ),
                  ),
                )
              ],
            ),
          );
        }
    );
  }
}