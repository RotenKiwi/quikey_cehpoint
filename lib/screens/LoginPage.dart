import 'package:flutter/material.dart';
import 'package:quikey_cehpoint/components/background.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                child: Image.asset('assets/images/Login.png', width: size.width*0.8,))
          ],
        ),
      ),
    );
  }
}
