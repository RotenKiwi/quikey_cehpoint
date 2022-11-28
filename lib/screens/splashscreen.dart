import 'package:flutter/material.dart';

import '../components/background.dart';

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
        child: background(
            size: size,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                    top: size.height * 0.304,
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: size.height * 0.35,
                      width: size.width * 0.35,
                    )),
                Positioned(
                    top: size.height * 0.55,
                    child: Text(
                      'QUIKEY',
                      style: TextStyle(
                        fontSize: size.width * 0.08,
                        color: Color(0xff2b2c7f),
                        decoration: TextDecoration.none,
                        fontFamily: 'Montserrat',
                      ),
                    )),
              ],
            )));
  }
}

