import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, 'home');
    });

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber),
      backgroundColor: Colors.amber,
      body: Container(
        height: double.infinity,
        child: Column(
          children: [
            Spacer(),
            Center(child: Text("texnomart*", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),)),
            SizedBox(height: 60,),
            Spacer(),
            Container(
                alignment: Alignment.bottomCenter,
                child: CircularProgressIndicator()),
            SizedBox(height: 16,)
          ],
        ),
      ),
    );
  }
}
