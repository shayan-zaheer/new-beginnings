import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

void main(){
    runApp(const MyApp()); // doesn't need to be recreated that's why we added const
}

// Types of Widgets
// 1. StatelessWidget
// 2. StatefulWidget
// 3. InheritedWidget

// Types of Design
// 1. Material Design
// 2. Cupertino Design

class MyApp extends StatelessWidget{
    const MyApp({super.key}); // key helps differentiate between widgets

    @override
    Widget build(BuildContext context){
        return const MaterialApp(
            home: CurrencyConverterMaterialPage()
        );
    }
}