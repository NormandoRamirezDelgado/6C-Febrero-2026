import 'package:flutter/material.dart';
import 'package:hola_mundo/presentation/screens/counter/counter_functions_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        //scaffoldBackgroundColor: Colors.amberAccent
      ),
      home: CounterFunctionsScreen()
    );
  }
  
}