import 'package:appjam_release1/destination_data/destination.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Material(
      child: Container(
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
              Transform.translate(
                offset: Offset(25,56),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  clipBehavior: Clip.hardEdge,

                ),
              ),
              Positioned(
                left: 38,
                top: 66,
                child: Container(
                  width: 24,
                  height: 24,
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: 9,
                        top: 6,
                        child: Image.network(
                          'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FYhGW1OicbpCr6oWaVZ3W%2F25a126299647a1730d61c81f8468ebc6.png',
                          width: 6,
                          height: 12,
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 174,
                top: 66,
                child: Text(
                  'Profil',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF1B1E28),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                    fontFamily: 'SF UI Display',
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 328,
                child: Image.network(
                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FYhGW1OicbpCr6oWaVZ3W%2Feda6f74e10858d1efb51b90d61c71e3e.png',
                  width: 115,
                  height: 92,
                  fit: BoxFit.contain,
                ),
              ),
              const Positioned(
                left: 279,
                top: 345,
                child: Text(
                  'Gidilecekler',
                  style: TextStyle(
                    color: Color(0xFF1B1E28),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    height: 1.1,
                    fontFamily: 'SF UI Display',
                  ),
                ),
              ),
               Positioned(
                left: 307,
                top: 376,
                child: SizedBox(
                  width: 28,
                  height: 25,
                  child: Text(
                    wishList.length.toString() ,
                    style: TextStyle(
                      color: Color(0xFF007F73),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      height: 1.3,
                      fontFamily: 'SF UI Display',
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 31,
                top: 345,
                child: Text(
                  'Ödül Puanları',
                  style: TextStyle(
                    color: Color(0xFF1B1E28),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    height: 1.1,
                    fontFamily: 'SF UI Display',
                  ),
                ),
              ),
              const Positioned(
                left: 58,
                top: 376,
                child: SizedBox(
                  width: 41,
                  height: 25,
                  child: Text(
                    '886',
                    style: TextStyle(
                      color: Color(0xFF007F73),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      height: 1.3,
                      fontFamily: 'SF UI Display',
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 164,
                top: 345,
                child: Text(
                  'Seyahatler',
                  style: TextStyle(
                    color: Color(0xFF1B1E28),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    height: 1.1,
                    fontFamily: 'SF UI Display',
                  ),
                ),
              ),
              const Positioned(
                left: 188,
                top: 376,
                child: SizedBox(
                  width: 28,
                  height: 25,
                  child: Text(
                    '68',
                    style: TextStyle(
                      color: Color(0xFF007F73),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      height: 1.3,
                      fontFamily: 'SF UI Display',
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 100,
                top: 228,
                child: SizedBox(
                  width: 192,
                  height: 42,
                  child: Text(
                    'Beraat Öztorun',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1B1E28),
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      height: 1.4,
                      fontFamily: 'SF UI Display',
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 112,
                top: 273,
                child: Text(
                  'beraatoztorun@gmail.com',
                  style: TextStyle(
                    color: Color(0xFFFDA403),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.1,
                    fontFamily: 'SF UI Display',
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 107,
                child: Container(
                  width: 113,
                  height: 113,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFDEE6),
                    borderRadius: BorderRadius.circular(57),
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 107,
                child: Container(
                  width: 113,
                  height: 113,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFE9DE),
                    borderRadius: BorderRadius.circular(57),
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 107,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(57),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    "images/beraat.jpg",
                    width: 113,
                    height: 113,
                    fit: BoxFit.none,
                    alignment: const Alignment(-0.016, 0.024),
                    scale: 10.096,
                  ),
                ),
              ),
              Positioned(
                left: -1,
                top: 650,
                child: Image.network(
                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FYhGW1OicbpCr6oWaVZ3W%2Fcf77c71d330399e8386e27b5e29ac208.png',
                  width: 395,
                  height: 2,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                left: 346,
                top: 603,
                child: Transform.rotate(
                  angle: 180 * pi / 180,
                  child: Container(
                    width: 28,
                    height: 28,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 11,
                          top: 7,
                          child: Image.network(
                            'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FYhGW1OicbpCr6oWaVZ3W%2F5513cc15d2435130246e9774fdeb134a.png',
                            width: 6,
                            height: 13,
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 27,
                top: 614,
                child: SizedBox(
                  width: 65,
                  height: 25,
                  child: Text(
                    'Ayarlar',
                    style: TextStyle(
                      color: Color(0xFF1B1E28),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      height: 1.3,
                      fontFamily: 'SF UI Display',
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -1,
                top: 536,
                child: Image.network(
                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FYhGW1OicbpCr6oWaVZ3W%2F2d4129d313212eb7285b1694528d460b.png',
                  width: 395,
                  height: 2,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                left: 346,
                top: 490,
                child: Transform.rotate(
                  angle: 180 * pi / 180,
                  child: Container(
                    width: 28,
                    height: 28,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 11,
                          top: 7,
                          child: Image.network(
                            'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FYhGW1OicbpCr6oWaVZ3W%2Fb609224a3e6f10b2fbd13b1103247b0a.png',
                            width: 6,
                            height: 13,
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 27,
                top: 500,
                child: SizedBox(
                  width: 124,
                  height: 25,
                  child: Text(
                    'Kaydedilenler',
                    style: TextStyle(
                      color: Color(0xFF1B1E28),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      height: 1.3,
                      fontFamily: 'SF UI Display',
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -1,
                top: 593,
                child: Image.network(
                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FYhGW1OicbpCr6oWaVZ3W%2F37bf3161dc692b36934f5ad26a61ee56.png',
                  width: 395,
                  height: 2,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                left: 346,
                top: 546,
                child: Transform.rotate(
                  angle: 180 * pi / 180,
                  child: SizedBox.square(
                    dimension: 28,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 11,
                          top: 7,
                          child: Image.network(
                            'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FYhGW1OicbpCr6oWaVZ3W%2F17f9d5579fdf2d9ce6ed6348b794d9e7.png',
                            width: 6,
                            height: 13,
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 27,
                top: 557,
                child: SizedBox(
                  width: 70,
                  height: 25,
                  child: Text(
                    'Geçmiş',
                    style: TextStyle(
                      color: Color(0xFF1B1E28),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      height: 1.3,
                      fontFamily: 'SF UI Display',
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -1,
                top: 479,
                child: Image.network(
                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FYhGW1OicbpCr6oWaVZ3W%2F6011ea8ae81c60636eb2ca84159ffbf4.png',
                  width: 395,
                  height: 2,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                left: 346,
                top: 433,
                child: Transform.rotate(
                  angle: 180 * pi / 180,
                  child: Container(
                    width: 28,
                    height: 28,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 11,
                          top: 7,
                          child: Image.network(
                            'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FYhGW1OicbpCr6oWaVZ3W%2F3a8e82088fe067fc820c40c702ae148d.png',
                            width: 6,
                            height: 13,
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 27,
                top: 443,
                child: SizedBox(
                  width: 134,
                  height: 25,
                  child: Text(
                    'Profil Tercihleri',
                    style: TextStyle(
                      color: Color(0xFF1B1E28),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      height: 1.3,
                      fontFamily: 'SF UI Display',
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -1,
                top: 706,
                child: Image.network(
                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FYhGW1OicbpCr6oWaVZ3W%2F18e441747a88050dfd62b65388435369.png',
                  width: 395,
                  height: 2,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                left: 345,
                top: 662,
                child: Transform.rotate(
                  angle: 180 * pi / 180,
                  child: SizedBox.square(
                    dimension: 28,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 11,
                          top: 7,
                          child: Image.network(
                            'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FYhGW1OicbpCr6oWaVZ3W%2F6a446f6eb2f724a971cdd741876b3c75.png',
                            width: 6,
                            height: 13,
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 27,
                top: 671,
                child: SizedBox(
                  width: 90,
                  height: 25,
                  child: Text(
                    'Dil Tercihi',
                    style: TextStyle(
                      color: Color(0xFF1B1E28),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      height: 1.3,
                      fontFamily: 'SF UI Display',
                    ),
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
