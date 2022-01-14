import 'package:flutter/material.dart';
import 'calculator.dart';
import 'calcui.dart';
void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      
      home: Calculatorcha(),
    );
  }
}
