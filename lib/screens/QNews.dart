import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quikey_cehpoint/components/PageIndicator.dart';

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
                  MaterialPageRoute(builder: (context) => QSnap()),
                );
              },
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Positioned(
                    child: Image.asset('assets/images/QText.png'),
                  ),
                  Positioned(
                    top: size.height * 0.918,
                    child: PageIndicator(size: size, page: 3),
                  ),
                ],
              ),
            )));
  }
}
