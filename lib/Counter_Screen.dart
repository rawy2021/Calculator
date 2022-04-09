import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  static const String routeName ='CounterScreen';

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int Conter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$Conter',style: TextStyle(
              fontSize: 30,
            ),),
            FloatingActionButton(onPressed: (){
              Conter ++;
              setState(() {

              });
              print(Conter);
            },
            child: Icon(Icons.add),)
          ],
        ),
      ),

    );
  }
}