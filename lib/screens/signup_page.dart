import 'package:flutter/material.dart';

import 'auth.dart';
import 'login_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordAgainController =
      TextEditingController();

  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold ekleyin
      body: Material(
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
                Positioned(
                  left: 29,
                  top: 56,
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
                  left: 39,
                  top: 66,
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
                  left: 165,
                  top: 135,
                  child: SizedBox(
                    width: 63,
                    height: 35,
                    child: Text(
                      'Kayıt',
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
                  left: 37,
                  top: 179,
                  child: SizedBox(
                    height: 21,
                    child: Text(
                      'Lütfen detayları doldurun ve hesap oluşturun',
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
                  top: 238,
                  child: Container(
                    width: 335,
                    height: 54,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF6F6F8),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          hintText: 'Ad Soyad',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 44,
                  top: 254,
                  child: SizedBox(
                    width: 67,
                    height: 21,
                  ),
                ),
                Positioned(
                  left: 29,
                  top: 315,
                  child: Container(
                    width: 335,
                    height: 54,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF6F6F8),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: 'E-Posta',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 44,
                  top: 331,
                  child: SizedBox(
                    width: 56,
                    height: 21,
                  ),
                ),
                Positioned(
                  left: 29,
                  top: 391,
                  child: Container(
                    width: 335,
                    height: 54,
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
                  top: 407,
                  child: SizedBox(
                    width: 32,
                    height: 21,
                  ),
                ),
                Positioned(
                  left: 325,
                  top: 410,
                  child: Image.network(
                    'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FYhGW1OicbpCr6oWaVZ3W%2Ff9e877aacb5256509fcc547202223aed.png',
                    width: 22,
                    height: 17,
                    fit: BoxFit.contain,
                  ),
                ),
                const Positioned(
                  left: 28,
                  top: 459,
                  child: SizedBox(
                    height: 17,
                    child: Text(
                      'Şifreniz en az 8 karakterli olmalı',
                      style: TextStyle(
                        color: Color(0xFF7C838D),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.1,
                        fontFamily: 'SF UI Display',
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 29,
                  top: 514,
                  child: ElevatedButton(
                    onPressed: () {
                      if(_nameController.text.isEmpty || _emailController.text.isEmpty || _passwordController.text.isEmpty){
                        final snackBar = SnackBar(
                          content: const Text('Alanlardan en az birini boş bıraktınız !'),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }else{
                        _authService.createPerson(_nameController.text,
                            _emailController.text, _passwordController.text);
                        final snackBar = SnackBar(
                          content: const Text('Kayıt olundu!'),

                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        Future.delayed(Duration(milliseconds: 700), () {
                          Navigator.of(context).pop();
                        });
                        Navigator.pop(context);
                      }


                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFFDA403),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Container(
                      width: 290,
                      height: 54,
                      alignment: Alignment.center,
                      child: Text(
                        'Kayıt Ol',
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
                  left: 81,
                  top: 605,
                  child: SizedBox(
                    height: 17,
                    child: Text(
                      'Zaten bir hesabınız var mı ?',
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
                  left: 265,
                  top: 605,
                  child: SizedBox(
                    height: 17,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Giriş Yap',
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
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SignUp(),
  ));
}
