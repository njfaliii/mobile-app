import 'package:flutter/material.dart';

class CustomText_Button extends StatelessWidget {
  const CustomText_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        debugPrint('Pressed');
      },
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(Color.fromARGB(255, 83, 3, 103)),
        foregroundColor:
            MaterialStateProperty.all<Color>(Color.fromARGB(255, 79, 6, 106)),
        fixedSize: MaterialStateProperty.all<Size>(Size(200, 50)),
      ),
      child: const Text(
        'Convert',
        style: TextStyle(color: Color.fromARGB(255, 30, 3, 99)),
      ),
    );
  }
}
