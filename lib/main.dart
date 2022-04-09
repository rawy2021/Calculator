import 'package:calculator/Calculator_Screen.dart';
import 'package:calculator/Counter_Screen.dart';
import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(
    routes: {
      CounterScreen.routeName : (context) => CounterScreen(),
      CalculatorScreen.routeName :(context)=>CalculatorScreen()
    },
    initialRoute: CalculatorScreen.routeName,
    debugShowCheckedModeBanner: false,
  ));
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    );
  }
}