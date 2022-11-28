import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 15,
          height: 15,
          decoration: const BoxDecoration(
            color: Color(0xff2b2c7f),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: size.width*0.01,),
        Container(
          width: 15,
          height: 15,
          decoration: const BoxDecoration(
            color: Color(0xffd9d9d9),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: size.width*0.01,),
        Container(
          width: 15,
          height: 15,
          decoration: const BoxDecoration(
            color: Color(0xffd9d9d9),
            shape: BoxShape.circle,
          ),
        )
      ],
    );
  }
}
