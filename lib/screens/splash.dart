import 'package:flutter/material.dart';

import 'onboarding.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatehome();
  }

  _navigatehome()async{
    await Future.delayed(Duration(milliseconds: 3000),() {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(
      builder: (context) => Onboarding(),//MyHomePage(title: 'GFG',) //buraya onboardu ver
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: 393,
        height: 808,
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          color: Color(0xFFFDA403),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              const Positioned(
                left: 147,
                top: 655,
                child: Text(
                  'Gezify',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.w900,
                    height: 1.2,
                    fontFamily: 'Geometr415 Blk BT',
                  ),
                ),
              ),
              Positioned(
                left: 96,
                top: 296,
                child: Container(
                  width: 200,
                  height: 200,
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: 5,
                        top: 0,
                        child: Image.network(
                          "https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FYhGW1OicbpCr6oWaVZ3W%2F8f054bc5d73c3ca7c2d999ad6da35931.png",
                          width: 189,
                          height: 200,
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
