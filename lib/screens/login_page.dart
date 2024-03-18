import 'package:appjam_release1/screens/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:appjam_release1/screens/forgotpassword.dart';
import 'package:appjam_release1/screens/signup_page.dart';

import 'home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  AuthService _authService = AuthService();
  /* Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  } */

  Future signIn() async {
    if (_emailController.text.trim().isEmpty ||
        _passwordController.text.trim().isEmpty) {
      // E-posta veya şifre alanları boşsa, kullanıcıya uyarı ver
      final snackBar = SnackBar(
        content: const Text('Lütfen e-posta ve şifrenizi girin.'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return; // İşlemi sonlandır
    }

    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());

      if (credential.user == null) {
        print("NULL NULL NULL");
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => MyHomePage()));
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

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
                left: 39,
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
                left: 49,
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
              const Positioned(
                left: 168,
                top: 135,
                child: SizedBox(
                  width: 57,
                  height: 34,
                  child: Text(
                    'Giriş',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1B1E28),
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                      fontFamily: 'SF UI Display',
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 66,
                top: 179,
                child: SizedBox(
                  height: 21,
                  child: Text(
                    'Devam etmek için lütfen giriş yapınız',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF7C838D),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 1.3,
                      fontFamily: 'SF UI Display',
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 29,
                top: 237,
                child: Container(
                  width: 335,
                  height: 53,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF6F6F8),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        hintText: 'E-Posta',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 44,
                top: 253,
                child: SizedBox(
                  width: 56,
                  height: 21,
                ),
              ),
              Positioned(
                left: 29,
                top: 313,
                child: Container(
                  width: 335,
                  height: 53,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF6F6F8),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Şifre',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 44,
                top: 329,
                child: SizedBox(
                  width: 32,
                  height: 21,
                ),
              ),
              Positioned(
                left: 262,
                top: 380,
                child: SizedBox(
                  height: 17,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ForgotPassword()));
                    },
                    child: Text(
                      'Şifremi Unuttum',
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
                ),
              ),
              Positioned(
                left: 29,
                top: 434,
                child: ElevatedButton(
                  onPressed: () async {
                    if (_emailController.text.isEmpty ||
                        _passwordController.text.isEmpty) {
                      final snackBar = SnackBar(
                        content: const Text('Kullanıcı adı veya şifre eksik'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } else {
                      _authService
                          .signIn(_emailController.text.trim(),
                              _passwordController.text.trim())
                          .then((user) {
                        if (user != null) {
                          final snackBar = SnackBar(
                            content: const Text('Giriş yapıldı'),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                        } else {
                          final snackBar = SnackBar(
                            content:
                                const Text('Kullanıcı adı veya şifre hatalı'),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      }).catchError((error) {
                        final snackBar = SnackBar(
                          content:
                              const Text('Giriş yapılırken bir hata oluştu'),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      });
                    }

                    //signIn();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFFDA403),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Container(
                    width: 290,
                    height: 53,
                    alignment: Alignment.center,
                    child: Text(
                      'Giriş Yap',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        height: 1.3,
                        fontFamily: 'SF UI Display',
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 95,
                top: 525,
                child: SizedBox(
                  height: 17,
                  child: Text(
                    'Bir hesabınız yok mu ?',
                    style: TextStyle(
                      color: Color(0xFF707B81),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.1,
                      fontFamily: 'SF UI Display',
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 325,
                top: 330,
                child: Image.network(
                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FYhGW1OicbpCr6oWaVZ3W%2Ff9e877aacb5256509fcc547202223aed.png',
                  width: 22,
                  height: 17,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                left: 252,
                top: 525,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: SizedBox(
                    height: 17,
                    child: Text(
                      'Kayıt Yap',
                      style: TextStyle(
                        color: Color(0xFF007F73),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.1,
                        fontFamily: 'SF UI Display',
                      ),
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

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}
