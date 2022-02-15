import 'package:flutter/material.dart';
import 'package:technomanics/appwidgets/app_text_field.dart';
import 'package:technomanics/appwidgets/background.dart';
import 'package:technomanics/appwidgets/custom_elevated_button.dart';
import 'package:technomanics/screens/user_profile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: BackgroundImage(
        page: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTextField(
                labelText: 'Email',
                hintText: 'Enter Email',
                controller: _emailTextController,
              ),
              const SizedBox(
                height: 20,
              ),
              AppTextField(
                controller: _passwordTextController,
                labelText: 'Password',
                hintText: 'Enter Password',
                isObscure: true,
              ),
              const SizedBox(height: 10),
              const Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomElevatedButton(btnText: 'LOGIN', callback: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const UserProfile()),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
