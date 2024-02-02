

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescriptionScreen extends StatelessWidget {
  final String description;
  const DescriptionScreen(this.description, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        automaticallyImplyLeading: true,
        title: Text('Tarif', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),),
      ),
      body: Column(
        children: [
          SizedBox(height: 8,),
          Text(description)
        ],
      ),
    );
  }
}
