import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello World!",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Please enter amount in PKR",
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.grey,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.green,
                        width: 2,
                        style: BorderStyle.solid,
                        strokeAlign: BorderSide.strokeAlignOutside),
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(30),
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.blueGrey);
  }
}
