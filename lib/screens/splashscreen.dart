import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        color: Color(0xffffffff),
        height: size.height,
        width: double.infinity,
        child: Stack(alignment: Alignment.bottomCenter, children: <Widget>[
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/background.png'))),
            ),
          ),

          Positioned(
              child: Container(
            width: double.infinity,
            height: size.height * 0.035,
            decoration: BoxDecoration(color: Color(0xff2b2c7f)),
          )),
          Positioned(
              bottom: size.height * 0.035,
              child: Container(
                width: double.infinity,
                height: size.height * 0.035 * 0.5,
                decoration: BoxDecoration(color: Color(0xfffd7105)),
              ))
        ]));
  }
}
