import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
@override
  void initState(){
    super.initState();
   Timer( Duration(seconds: 3),(){
    if(!mounted)return;
  Navigator.pushReplacement(
    context,
     MaterialPageRoute(
      builder:(context) => Login(),
     
     ),
     );
   }
  

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: const Color.fromARGB(255, 249, 229, 50),
   body: Center(
    child: Image.asset('assets/image/splash.png',
  
      
    )
   ),
    );
  }
}