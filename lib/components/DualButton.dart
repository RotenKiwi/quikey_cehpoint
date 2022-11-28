import 'package:flutter/material.dart';

class DualButton extends StatelessWidget {
  const DualButton({
    super.key,
    required this.size, required this.mode, required this.press_1, required this.press_2,
  });

  final Size size;
  final String mode;
  final Function() press_1;
  final Function() press_2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15)),
          child: Container(
            width: size.width * 0.28,
            color: (mode=='login')?Color(0xff2b2c7f):Color(0xffe6e6e6),
            child: TextButton(
              onPressed: press_1,
              child: Text(
                'LOGIN',
                style: TextStyle(
                  color: (mode=='login')?Color(0xffffffff):Color(0xff000000),
                  fontSize: size.width * 0.045,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,),
              ),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15)),
          child: Container(
            width: size.width * 0.28,
            color: (mode=='login')?Color(0xffe6e6e6):Color(0xff2b2c7f),
            child: TextButton(
              onPressed: press_2,
              child: Text(
                'SIGNUP',
                style: TextStyle(
                  color: (mode=='login')?Color(0xff000000):Color(0xffffffff),
                  fontSize: size.width * 0.045,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,),
              ),
            ),
          ),
        )
      ],
    );
  }
}