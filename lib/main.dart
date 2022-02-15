import 'package:flutter/material.dart';
import 'package:technomanics/screens/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/app_background.png'), fit: BoxFit.cover
              )
          ),
          child: const Dashboard(),
        ),
      ),
    );
  }
}
