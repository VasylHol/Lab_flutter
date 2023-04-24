import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SafeArea(
          child: Stack(
            fit: StackFit.loose,
            children: [
              Container(
                height: 300,
                width: 300,
                color: Color.fromARGB(255, 29, 181, 219),
              ),
              Container(
                height: 200,
                width: 200,
                color: Color.fromARGB(255, 127, 154, 19),
              ),
              Container(
                height: 100,
                width: 100,
                color: Color.fromARGB(255, 214, 110, 110),
              )
            ],
          ),
        ),
      ],
    ))));
  }
}
