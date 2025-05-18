import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/bottomnav.dart';
import 'package:food_delivery_app/pages/home.dart';
import 'package:food_delivery_app/pages/login.dart';
import 'package:food_delivery_app/pages/onboard.dart';
import 'package:food_delivery_app/pages/signup.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Onboard(),
    );
  }
}