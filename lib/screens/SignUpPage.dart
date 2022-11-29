import 'package:flutter/material.dart';
import 'package:quikey_cehpoint/components/SignupDetails.dart';
import 'package:quikey_cehpoint/components/backbutton.dart';
import 'package:quikey_cehpoint/components/background_nobottom.dart';
import 'package:quikey_cehpoint/components/roundedbutton.dart';
import 'package:quikey_cehpoint/screens/LoginPage.dart';

import '../components/DualButton.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool encrypt = true;

  void show() {
    setState(() => encrypt = false);
  }

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
                  top: size.height * 0.08,
                  left: size.width * 0.06,
                  child: backbutton(
                    press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  )),
              Positioned(
                  top: size.height * 0.01,
                  child: Image.asset(
                    'assets/images/Signup.png',
                    width: size.width,
                  )),
              Positioned(
                  top: size.height * 0.348,
                  child: DualButton(
                    size: size,
                    mode: 'signup',
                    press_1: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    press_2: () {},
                  )),
              Positioned(
                  top: size.height * 0.42,
                  width: size.width,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        size.width * 0.07, 0, size.width * 0.07, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Color(0xff606060),
                            fontSize: size.width * 0.047,
                            fontFamily: 'Poppins',
                          )),
                    ),
                  )),
              Positioned(
                top: size.height * 0.5,
                width: size.width * 0.86,
                // child: Padding(
                //   padding: EdgeInsets.fromLTRB(
                //       size.width * 0.07, 0, size.width * 0.07, 0),
                child: TextFormField(
                  obscureText: encrypt ? true : false,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(
                          size.width * 0.07,
                          size.height * 0.005,
                          size.width * 0.07,
                          size.height * 0.005),
                      suffix: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Show',
                          style: TextStyle(
                            color: Color(0xff2b2c7f),
                            fontSize: size.width * 0.045,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Color(0xff606060),
                        fontSize: size.width * 0.045,
                        fontFamily: 'Poppins',
                      )),
                ),
              ),
              Positioned(
                top: size.height * 0.58,
                width: size.width * 0.86,
                // child: Padding(
                //   padding: EdgeInsets.fromLTRB(
                //       size.width * 0.07, 0, size.width * 0.07, 0),
                child: TextFormField(
                  obscureText: encrypt ? true : false,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(
                          size.width * 0.07,
                          size.height * 0.005,
                          size.width * 0.07,
                          size.height * 0.005),
                      suffix: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Show',
                          style: TextStyle(
                            color: Color(0xff2b2c7f),
                            fontSize: size.width * 0.045,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      labelText: 'Repeat Password',
                      labelStyle: TextStyle(
                        color: Color(0xff606060),
                        fontSize: size.width * 0.045,
                        fontFamily: 'Poppins',
                      )),
                ),
              ),
              // Positioned(
              //     top: size.height * 0.58,
              //     right: size.width * 0.03,
              //     child: TextButton(
              //       onPressed: () {},
              //       child: Text(
              //         'Forgot Password',
              //         style: TextStyle(
              //           fontFamily: 'Poppins',
              //           fontSize: size.width * 0.039,
              //           color: Color(0xff606060),
              //         ),
              //       ),
              //     )),
              Positioned(
                  top: size.height * 0.67,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Or',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff606060),
                          fontSize: size.width * 0.05,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      Text(
                        'Login with',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff606060),
                          fontSize: size.width * 0.05,
                        ),
                      ),
                      SizedBox(
                        height: size.width * 0.04,
                      ),
                      Row(
                        children: <Widget>[
                          InkWell(
                            onTap: () {},
                            child: Image.asset(
                              'assets/images/facebook.png',
                              width: size.width * 0.15,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.15,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Image.asset(
                              'assets/images/google.png',
                              width: size.width * 0.15,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      RoundedButton(
                          text: 'SIGNUP',
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpDetails()));
                          },
                          color: Color(0xffff6805),
                          textColor: Color(0xfff8f9fc),
                          length: size * 0.8)
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
