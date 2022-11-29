import 'package:flutter/material.dart';
import 'package:quikey_cehpoint/components/RoundedField.dart';
import 'package:quikey_cehpoint/components/background.dart';
import 'package:quikey_cehpoint/components/background_nobottom.dart';
import 'package:quikey_cehpoint/screens/SignUpPage.dart';

import 'backbutton.dart';

class SignUpDetails extends StatefulWidget {
  const SignUpDetails({Key? key}) : super(key: key);

  @override
  State<SignUpDetails> createState() => _SignUpDetailsState();
}

class _SignUpDetailsState extends State<SignUpDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      color: Color(0xffd9d9d9),
      child: background_nobottom(
          size: size,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Positioned(
                  top: size.height * 0.08,
                  left: size.width * 0.06,
                  child: backbutton(
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupPage()));
                    },
                  )),
              Positioned(
                  top: size.height * 0.07,
                  child: RoundedField(
                    text: 'PROFILE SETUP',
                    color: Color(0xff2b2c7f),
                    length: size * 0.36,
                    textColor: Color(0xffffffff), tall: size*0.06,
                  ))
            ],
          )),
    ));
  }
}
