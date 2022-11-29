import 'package:flutter/material.dart';

class backbutton extends StatelessWidget {
  final Function() press;
  const backbutton({
    super.key, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: press,
      ),
    );
  }
}