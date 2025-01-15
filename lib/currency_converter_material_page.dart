import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget{
    const CurrencyConverterMaterialPage({super.key});
    @override
    Widget build(BuildContext context){
        return const Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text("Hello World!", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255))),
                        TextField(
                            decoration: InputDecoration(
                                label: Text("Enter amount in PKR.", style: TextStyle(color: Colors.white)),
                            ),
                        )
                    ],
                ),
            ), 
            backgroundColor: Colors.black
        );
    }
}