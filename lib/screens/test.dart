import 'package:flutter/material.dart';
import 'package:quikey_cehpoint/components/name.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          AnimatedPositioned(duration: Duration(seconds: 2),
          child: Image.asset('assets/images/kiwi.png'))
        ],
      ),
    );
  }
}
