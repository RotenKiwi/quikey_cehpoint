import 'package:flutter/material.dart';

class Name extends StatelessWidget {

  const Name({
    super.key,

    required this.size,
  });


  final Size size;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Qtext',
      style: TextStyle(
        fontSize:
        size.width * 0.08,
        color: Color(0xff2b2c7f),
        decoration: TextDecoration.none,
        fontFamily: 'Montserrat',
      ),
    );
  }
}