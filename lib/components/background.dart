import 'package:flutter/material.dart';

class background extends StatelessWidget {
  final Widget child;

  const background({
    super.key,
    required this.size,
    required this.child,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      //clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Positioned(
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/background.png'))),
            ),
          ),
          Positioned(
              child: Container(
                color: const Color(0xff2b2c7f),
                width: size.width,
                height: size.height * 0.04,
              )),
          Positioned(
              bottom: size.height * 0.04,
              child: Container(
                width: size.width,
                height: size.height * 0.0175,
                decoration: const BoxDecoration(color: Color(0xfffd7105)),
              )),
          // Positioned(
          //     top: size.height * 0.304,
          //     child: Image.asset(
          //       'assets/images/logo.png',
          //       height: size.height * 0.35,
          //       width: size.width * 0.35,
          //     )),
          // Positioned(
          //     top: size.height * 0.55,
          //     child: Text(
          //       'QUIKEY',
          //       style: TextStyle(
          //         fontSize: size.width * 0.08,
          //         color: Color(0xff2b2c7f),
          //         decoration: TextDecoration.none,
          //         fontFamily: 'Montserrat',
          //       ),
          //     )),
          Positioned(
              bottom: size.height * 0.07,
              child: Text(
                'Made with love in India ❤️',
                style: TextStyle(
                    fontSize: size.width * 0.04,
                    decoration: TextDecoration.none,
                    color: Color(0xff606060),
                    fontFamily: 'Poppins'),
              )),
          child,
        ]);
  }
}
