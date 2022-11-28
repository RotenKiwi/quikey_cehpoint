import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quikey_cehpoint/components/PageIndicator.dart';
import 'package:quikey_cehpoint/screens/LoginPage.dart';

import '../components/background.dart';
import 'QSnap.dart';

class QNews extends StatefulWidget {
  const QNews({Key? key}) : super(key: key);

  @override
  State<QNews> createState() => _QNewsState();
}

class _QNewsState extends State<QNews> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        color: Color(0xffffffff),
        child: background(
            size: size,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Positioned(
                    top: size.height * 0.05 * (-1),
                    child: Container(
                      width: size.width,
                      child: Image.asset('assets/images/QNews.png'),
                    ),
                  ),
                  Positioned(
                      top: size.height * 0.48,
                      left: size.width * 0.065,
                      child: Text(
                        'QNews',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Color(0xffd9d9d9),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: size.width * 0.1),
                      )),
                  Positioned(
                      top: size.height * 0.58,
                      left: size.width * 0.065,
                      child: Container(
                        width: size.width*0.8,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Color(0xffd9d9d9),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                            height: size.height*0.0018,
                            fontSize: size.width*0.05,),
                        ),
                      )),
                  Positioned(
                    top: size.height * 0.918,
                    child: PageIndicator(size: size, page: 3),
                  ),
                ],
              ),
            )));
  }
}
