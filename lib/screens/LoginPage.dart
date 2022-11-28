import 'package:flutter/material.dart';
import 'package:quikey_cehpoint/components/background.dart';

import '../components/DualButton.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Color(0xffffffff),
        child: background(
          size: size,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Positioned(
                  top: 0,
                  child: Image.asset(
                    'assets/images/Login.png',
                    width: size.width * 0.8,
                  )),
              Positioned(
                  top: size.height * 0.348,
                  child: DualButton(
                    size: size,
                    mode: 'login',
                  )),
              Positioned(
                  top: size.height * 0.3,
                  child: Padding(
                    padding: EdgeInsets.all(0.3),
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Email'),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
