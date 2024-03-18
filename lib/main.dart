import 'package:appjam_release1/firebase_options.dart';
import 'package:appjam_release1/screens/auth.dart';
import 'package:appjam_release1/screens/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, //bu silinebilir ?
  );
  runApp(MyApp()); //MyApp veriliyordu
}

