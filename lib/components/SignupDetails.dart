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
      color: Color(0xffffffff),
      child: background_nobottom(
          size: size,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Positioned(
                  top: size.height * 0.06,
                  left: size.width * 0.05,
                  child: backbutton(
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupPage()));
                    },
                  )),
              Positioned(
                  top: size.height * 0.053,
                  child: RoundedField(
                    text: 'PROFILE SETUP',
                    color: Color(0xff2b2c7f),
                    length: size * 0.36,
                    textColor: Color(0xffffffff),
                    tall: size * 0.06,
                  )),
              Positioned(
                  top: size.height * 0.153,
                  child: Text(
                    'You Are Just One Step Away From Your\nSocial Media Journey',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        fontSize: size.width * 0.047,
                        color: Color(0xff606060)),
                  )),
              Positioned(
                  top: size.height*0.244,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffd9d9d9),
                    radius: size.width*0.176,
                    child: Icon(Icons.person_outlined, size: size.height*0.15, color: Color(0xff606060),),)),

            ],
          )),
    ));
  }
}
