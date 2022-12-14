import 'package:flutter/material.dart';
import 'package:quikey_cehpoint/components/roundedbutton.dart';
import 'package:quikey_cehpoint/screens/QText.dart';

import '../components/background.dart';
import '../components/name.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  bool initial = false;

  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        color: Color(0xffffffff),
        height: size.height,
        width: double.infinity,
        child: background(
            size: size,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                AnimatedPositioned(
                    duration: Duration(seconds: 1),
                    top: initial ? size.height * 0.074 : size.height * 0.304,
                    child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        child: Image.asset(
                          'assets/images/logo.png',
                          height:
                              initial ? size.height * 0.45 : size.height * 0.35,
                          width:
                              initial ? size.width * 0.45 : size.width * 0.35,
                        ))),
                //Logo
                AnimatedPositioned(
                    duration: Duration(seconds: 1),
                    top: initial ? size.height * 0.40 : size.height * 0.55,
                    child: Name( size: size, )),
                //Name
                AnimatedPositioned(
                    duration: Duration(seconds: 1),
                    top: size.height * 0.50,
                    child: AnimatedOpacity(
                      opacity: initial ? 1.0 : 0.0,
                      duration: Duration(seconds: 3),
                      child: Text(
                        'India\'s first hyperactive social media',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Poppins',
                          fontSize: size.width * 0.043,
                          color: Color(0xFF606060),
                        ),
                      ),
                    )),
                AnimatedPositioned(
                    top: size.height * 0.815,
                    duration: Duration(seconds: 2),
                    child: AnimatedOpacity(
                      opacity: initial ? 1.0 : 0.0,
                      duration: Duration(seconds: 2),
                      child: RoundedButton(
                        text: 'GET STARTED',
                        color: Color(0xffff6805),
                        textColor: Color(0xfff8f9fc),
                        length: size * 0.75,
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Qtext()),
                          );
                        },
                      ),
                    )),
                //Description
                Positioned(
                    bottom: size.height * 0.07,
                    child: Text(
                      'Made with love in India ??????',
                      style: TextStyle(
                          fontSize: size.width * 0.04,
                          decoration: TextDecoration.none,
                          color: Color(0xff606060),
                          fontFamily: 'Poppins'),
                    )),
              ],
            )));
  }

  Future startAnimation() async {
    await Future.delayed(Duration(seconds: 1));
    setState(() => initial = true);
    //await Future.delayed(Duration(seconds: 1));
    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>getStarted()))
  }
}


