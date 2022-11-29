import 'package:flutter/material.dart';

class RoundedField extends StatelessWidget {
  final String text;
  final Color color, textColor;
  final Size length;
  final Size tall;

  const RoundedField({
    Key? key,
    required this.text,
    required this.color,
    required this.textColor,
    required this.length, required this.tall,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        alignment: Alignment.center,
        height: tall.height,
          width: length.width,
          color: color,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              color: textColor,
              fontSize: 15,
            ),
          )),
    );
  }
}
