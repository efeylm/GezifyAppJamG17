import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              children: [
                Positioned(
                  left: 10,
                  top: 66,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FYhGW1OicbpCr6oWaVZ3W%2F87925d9f4df6205080d98b995ea20862.png',
                        width: 45,
                        height: 45,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 19,
                  top: 76,
                  child: Container(
                    width: 24,
                    height: 23,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 9,
                          top: 6,
                          child: Image.network(
                            'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FYhGW1OicbpCr6oWaVZ3W%2F3fcd0d4b6b632f0a95d08301fc2328c0.png',
                            width: 6,
                            height: 11,
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 150),
                    Text(
                      'Şifremi Unuttum',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF1B1E28),
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        height: 1.3,
                        fontFamily: 'SF UI Display',
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Şifrenizi sıfırlamak için e-posta hesabınızı girin',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF7C838D),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 1.3,
                        fontFamily: 'SF UI Display',
                      ),
                    ),
                    SizedBox(height: 40),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'E-Posta',
                        fillColor: Color(0xFFF6F6F8),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 18,
                          horizontal: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () async {
                        final snackBar = SnackBar(
                          content:
                              const Text('Şifre yenileme maili gönderildi'),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        Future.delayed(Duration(milliseconds: 900), () {
                          Navigator.of(context).pop();
                        });

                        //Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFDA403),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        minimumSize: Size(335, 56),
                      ),
                      child: Text(
                        'Şifreyi Sıfırla',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.3,
                          fontFamily: 'SF UI Display',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ForgotPassword(),
  ));
}
