import 'package:flutter/material.dart';
import 'package:technomanics/appwidgets/app_text_field.dart';
import 'package:technomanics/appwidgets/background.dart';
import 'package:technomanics/appwidgets/custom_elevated_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
              const SizedBox(
                height: 20,
              ),
              CustomElevatedButton(btnText: 'SIGN UP', callback: () => {}),
            ],
          ),
        ),
      ),
    );
  }
}
