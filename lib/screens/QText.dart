import 'package:flutter/material.dart';
import 'package:quikey_cehpoint/components/background.dart';

import '../components/PageIndicator.dart';

class Qtext extends StatelessWidget {
  const Qtext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Color(0xffffffff),
      child: background(
          size: size,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Positioned(
                  top: 0,
                  child: Container(
                      //color: Color(0xffffffff),
                      height: size.height * 0.49,
                      width: size.width,
                      child: Image.asset(
                        'assets/images/QText.png',
                        //height: size.height * 0.4,
                        fit: BoxFit.cover,
                        //width: size.width*1.5,
                      ))),
              Positioned(
                  top: size.height * 0.51,
                  child: PageIndicator(size: size, page: 1,))
            ],
          )),
    );
  }
}

