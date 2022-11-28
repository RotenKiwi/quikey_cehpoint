import 'package:flutter/material.dart';
import 'package:quikey_cehpoint/components/background.dart';
import 'package:quikey_cehpoint/components/background_nobottom.dart';
import 'package:quikey_cehpoint/components/roundedbutton.dart';

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
        child: background_nobottom(
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
                  top: size.height * 0.44,
                  width: size.width,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        size.width * 0.07, 0, size.width * 0.07, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Color(0xff606060),
                            fontSize: size.width * 0.047,
                            fontFamily: 'Poppins',
                          )),
                    ),
                  )),
              Positioned(
                  top: size.height * 0.52,
                  width: size.width,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        size.width * 0.07, 0, size.width * 0.07, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Color(0xff606060),
                            fontSize: size.width * 0.045,
                            fontFamily: 'Poppins',
                          )),
                    ),
                  )),
              Positioned(
                  top: size.height * 0.58,
                  right: size.width * 0.03,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: size.width * 0.039,
                        color: Color(0xff606060),
                      ),
                    ),
                  )),
              Positioned(
                  top: size.height * 0.65,
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
                      SizedBox(height: size.height*0.061,),
                      RoundedButton(
                          text: 'LOGIN',
                          press: () {},
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
