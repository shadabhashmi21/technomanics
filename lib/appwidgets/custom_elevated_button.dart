import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String btnText;
  final VoidCallback callback;

  const CustomElevatedButton({Key? key, required this.btnText, required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => callback(),
      child: Text(btnText, style: const TextStyle(fontSize: 25),),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}
