import 'package:flutter/material.dart';

class CurrencyText_Field extends StatelessWidget {
  const CurrencyText_Field({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Please Enter any amount in USD",
          hintStyle: TextStyle(color: Colors.white),
          prefixIcon: Icon(Icons.monetization_on),
          filled: true,
          fillColor: Color.fromARGB(47, 159, 62, 198),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(
              color: Color.fromARGB(70, 14, 1, 95),
              width: 2.0,
              style: BorderStyle.solid,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(
              color: Color.fromARGB(70, 14, 1, 95),
              width: 2.0,
              style: BorderStyle.solid,
            ),
          ),
        ),
        keyboardType: TextInputType.numberWithOptions(decimal: true),
      ),
    );
  }
}
