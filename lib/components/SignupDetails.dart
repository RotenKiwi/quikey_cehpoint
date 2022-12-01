import 'package:flutter/material.dart';
import 'package:quikey_cehpoint/components/RoundedField.dart';
import 'package:quikey_cehpoint/components/background.dart';
import 'package:quikey_cehpoint/components/background_nobottom.dart';
import 'package:quikey_cehpoint/components/roundedbutton.dart';
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
                  top: size.height * 0.244,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffd9d9d9),
                    radius: size.width * 0.176,
                    child: Icon(
                      Icons.person_outlined,
                      size: size.height * 0.15,
                      color: Color(0xff606060),
                    ),
                  )),
              Positioned(
                  top: size.height * 0.395,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Upload photo',
                      style: TextStyle(
                          fontSize: size.width * 0.044,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                          color: Color(0xff606060)),
                    ),
                  )),
              Positioned(
                  width: size.width,
                  top: size.height * 0.465,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        size.width * 0.07, 0, size.width * 0.07, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'FULL NAME',
                          labelStyle: TextStyle(
                            color: Color(0xff606060),
                            fontSize: size.width * 0.047,
                            fontFamily: 'Poppins',
                          )),
                    ),
                  )),
              Positioned(
                  width: size.width,
                  top: size.height * 0.55,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        size.width * 0.07, 0, size.width * 0.07, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'DD/MM/YYYY',
                          labelStyle: TextStyle(
                            color: Color(0xff606060),
                            fontSize: size.width * 0.047,
                            fontFamily: 'Poppins',
                          )),
                    ),
                  )),
              Positioned(
                  width: size.width,
                  top: size.height * 0.635,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        size.width * 0.07, 0, size.width * 0.07, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'City',
                          labelStyle: TextStyle(
                            color: Color(0xff606060),
                            fontSize: size.width * 0.047,
                            fontFamily: 'Poppins',
                          )),
                    ),
                  )),
              Positioned(
                width: size.width,
                top: size.height * 0.72,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      size.width * 0.07, 0, size.width * 0.66, 0),
                  child: TextFormField(
                    readOnly: true,
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/India.png',
                            width: 35,
                            height: 20,
                            fit: BoxFit.fill,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15))),
                        labelText: '+91',
                        labelStyle: TextStyle(
                          color: Color(0xff606060),
                          fontSize: size.width * 0.047,
                          fontFamily: 'Poppins',
                        )),
                  ),
                ),
              ),
              Positioned(
                width: size.width,
                top: size.height * 0.72,
                left: size.width * 0.268,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      size.width * 0.07, 0, size.width * 0.335, 0),
                  child: TextFormField(
                    readOnly: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        labelText: 'Phone',
                        labelStyle: TextStyle(
                          color: Color(0xff606060),
                          fontSize: size.width * 0.047,
                          fontFamily: 'Poppins',
                        )),
                  ),
                ),
              ),
              Positioned(
                  top: size.height * 0.89,
                  child: RoundedButton(
                    color: Color(0xffff6805),
                    length: size * 0.8,
                    press: () {},
                    text: 'NEXT',
                    textColor: Color(0xfff8f9fc),
                  ))
            ],
          )),
    ));
  }
}
