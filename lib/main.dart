import 'package:flutter/material.dart';

void main(){
    runApp(const MyApp()); // doesn't need to be recreated that's why we added const
}

// Types of Widgets
// 1. StatelessWidget
// 2. StatefulWidget
// 3. InheritedWidget

class MyApp extends StatelessWidget{
    const MyApp({super.key});

    @override
    Widget build(BuildContext context){
        return const Text("Hello, World!", textDirection: TextDirection.ltr);
    }
}