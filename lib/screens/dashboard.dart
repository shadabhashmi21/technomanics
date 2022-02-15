import 'package:flutter/material.dart';
import 'package:technomanics/appwidgets/background.dart';
import 'package:technomanics/appwidgets/custom_elevated_button.dart';
import 'package:technomanics/screens/login_page.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        page: Column(
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
                CustomElevatedButton(
                    btnText: 'Login',
                    callback: () =>
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginPage()),
                        )
                ),
                CustomElevatedButton(btnText: 'Signup', callback: () {

                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
