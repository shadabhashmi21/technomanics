import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final Widget page;

  const BackgroundImage({Key? key, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/app_background.png'),
              fit: BoxFit.cover)),
      child: page,
    ));
  }
}
