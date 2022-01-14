import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tugma.dart';

class Calc extends StatefulWidget {
  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  List tugmalar = [
    "C",
    "DEL",
    "%",
    "/",
    "9",
    "8",
    "7",
    "x",
    "6",
    "5",
    "4",
    "-",
    "3",
    "2",
    "1",
    "+",
    "0",
    ".",
    "00",
    "=",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade200,
      body: Column(
        children: [
          Expanded(
            child: Container(),
          ),
          Expanded(
            flex: 2,
            child: Container(
               
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Tugma(
                    tugmaText: tugmalar[index],
                    rang: Colors.black26,
                    textrang: Colors.white,
                  );
                },itemCount: tugmalar.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
