import 'package:flutter/material.dart';
import 'package:technomanics/appwidgets/custom_elevated_button.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Center(
          child: Text(
            'Classmates',
            style: TextStyle(fontSize: 40),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomElevatedButton(btnText: 'Login', callback: () {}),
            CustomElevatedButton(btnText: 'Signup', callback: () {})
          ],
        )
      ],
    );
  }
}
