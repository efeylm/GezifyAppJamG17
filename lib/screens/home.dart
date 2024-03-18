import 'package:appjam_release1/destination_data/destination.dart';
import 'package:appjam_release1/destination_data/destination_tile.dart';
import 'package:appjam_release1/screens/add_destination.dart';
import 'package:appjam_release1/screens/profile_page.dart';
import 'package:appjam_release1/screens/splash.dart';
import 'package:appjam_release1/screens/wish_to_go.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Splash(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 393,
        height: 808,
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 18,
                top: 50,
                child: Container(
                  width: 122,
                  height: 48,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF6F6F8),
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 56,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(19),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    //'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FYhGW1OicbpCr6oWaVZ3W%2F36c7ef8e09dd51f3f926c97293470bef8da2e004Ellipse%2022.png?alt=media&token=9f2f8cf5-7e91-4e8a-8e5e-a3f6364d08d4',
                    "images/beraat.jpg",
                    width: 37,
                    height: 37,
                    fit: BoxFit.none,
                    alignment: const Alignment(-0.016, 0.024),
                    scale: 30.730,
                  ),
                ),
              ),
              Positioned(
                left: 74,
                top: 65,
                child: Text(
                  'Beraat',
                  style: TextStyle(
                    color: Color(0xFF1B1E28),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.1,
                    fontFamily: 'SF UI Display',
                  ),
                ),
              ),
              Positioned(
                left: 327,
                top: 50,
                child: Container(
                  width: 48,
                  height: 48,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF6F6F8),
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
              Positioned(
                left: 343,
                top: 64,
                child: Image.network(
                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FYhGW1OicbpCr6oWaVZ3W%2Fd2be4070ef7828265b47b1cdf3989ae4.png',
                  width: 17,
                  height: 20,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                left: 19,
                top: 119,
                child: SizedBox(
                  width: 305,
                  height: 102,
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        color: Color(0xFF2D323D),
                        fontSize: 38,
                        fontWeight: FontWeight.w600,
                        height: 1.3,
                        fontFamily: 'SF UI Display',
                      ),
                      children: [
                        TextSpan(
                          text: 'Güzel ',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontFamily: 'SF UI Display',
                          ),
                        ),
                        TextSpan(text: 'Dünya’yı'),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontFamily: 'SF UI Display',
                          ),
                        ),
                        TextSpan(
                          text: 'Keşfedin',
                          style: TextStyle(
                            color: Color(0xFF007F73),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: '!',
                          style: TextStyle(
                            color: Color(0xFF007F73),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 19,
                top: 251,
                child: Text(
                  'Tavsiye Edilenler',
                  style: TextStyle(
                    color: Color(0xFF1B1E28),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    height: 1.4,
                    fontFamily: 'SF UI Display',
                  ),
                ),
              ),
              Positioned(
                left: 299,
                top: 257,
                child: Text(
                  'Hepsini Gör',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF007F73),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.1,
                    fontFamily: 'SF UI Display',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 292), //burası burası
                child: SizedBox(
                  height: 400,
                  child: ListView.builder(
                    itemCount: destinationlist.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, i) {
                      return DestinationTile(destination: destinationlist[i]);
                    },
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 727,
                child: Image.network(
                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FYhGW1OicbpCr6oWaVZ3W%2F72ec3e4b5bf546970c7b4e9d277428ff.png',
                  width: 28,
                  height: 28,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                left: 24,
                top: 760, //
                child: SizedBox(
                  width: 59,
                  height: 19,
                  child: Text(
                    'Ana Sayfa',
                    style: TextStyle(
                      color: Color(0xFFFDA403),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 1.3,
                      fontFamily: 'SF UI Display',
                    ),
                  ),
                ),
              ),
           //   Positioned(
           //     left: 136,
           //     top: 727,
           //     child: Container(
           //       width: 25,
           //       height: 25,
           //       clipBehavior: Clip.hardEdge,
           //       decoration: BoxDecoration(
           //         border: Border.all(
           //           width: 1.6,
           //         ),
           //         borderRadius: BorderRadius.circular(13),
           //       ),
           //     ),
           //   ),
              Positioned(
                left: 130,
                top: 726,
                child:
                //Image.network(
                //  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FYhGW1OicbpCr6oWaVZ3W%2F0695b25df1987680049001166320cdf3.png',
                //  width: 6,
                //  height: 6,
                //  fit: BoxFit.contain,
                //),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddDestination()));                  },
                  child: Image.asset(
                    'images/plus.png',
                    width: 26,
                    height: 26,
                    fit: BoxFit.contain,
                    color: Color(0xFF20232D),
                  ),
                )
              ),
              Positioned(
                left: 130,
                top: 760,
                child: SizedBox(
                  width: 39,
                  height: 19,
                  child: Text(
                    'Ekle',
                    style: TextStyle(
                      color: Color(0xFF20232D),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 1.3,
                      fontFamily: 'SF UI Display',
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 234,
                top: 727,
                child: GestureDetector(
                  onTap: () {
                    print("gidileceklere git");
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => WishToGo()));
                    },
                  child: Container(
                    width: 32,
                    height: 32,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 3,
                          top: 3,
                          child: Image.network(
                            'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FYhGW1OicbpCr6oWaVZ3W%2Fda0131d4915780ad930a62405d04f67a.png',
                            width: 26,
                            height: 24,
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 216,
                top: 760,
                child: SizedBox(
                  width: 69,
                  height: 19,
                  child: Text(
                    'Gidilecekler',
                    style: TextStyle(
                      color: Color(0xFF20232D),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 1.3,
                      fontFamily: 'SF UI Display',
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 340,
                top: 746,
                child: Container(
                  width: 21,
                  height: 11,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: const Color(0xFF20232D),
                    ),
                    borderRadius:
                        const BorderRadius.all(Radius.elliptical(11, 6)),
                  ),
                ),
              ),
              Positioned(
                left: 344,
                top: 731,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage()));
                  },
                  child: Container(
                    width: 13,
                    height: 13,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: const Color(0xFF20232D),
                      ),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 335,
                top: 760,
                child: SizedBox(
                  width: 31,
                  height: 19,
                  child: Text(
                    'Profil',
                    style: TextStyle(
                      color: Color(0xFF20232D),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 1.3,
                      fontFamily: 'SF UI Display',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
