import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sbce_app/pages/InstagramFeed.dart';
import 'package:sbce_app/pages/emploeeLoginPage.dart';

void main() {
  runApp(Instagram());
}

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Instagram",
          style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.pink,
        ),

        body: InstagramFeed(),
      ),
    );
  }
}

