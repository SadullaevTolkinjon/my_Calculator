import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculatorcha extends StatefulWidget {
  @override
  State<Calculatorcha> createState() => _CalculatorchaState();
}

class _CalculatorchaState extends State<Calculatorcha> {
  var natija = "";
  var _natija = "0";
  var operator = "";
  int num1 = 0;
  var num2 = 0;
  var amal = "";

  buttonTap() {
    setState(() {
      natija;
      _natija;
      amal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.lock_open),
          
        ],
        backgroundColor: Colors.grey,
      ),
      
      backgroundColor: Colors.grey.shade600,
      
      body: Column(
        children: [
          Row(
            children: [
              Container(
                alignment: Alignment.centerRight,
                color: Colors.black12,
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.height * 0.4818,
                child: Text(
                  "$natija",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.centerRight,
                color: Colors.black12,
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.height * 0.4818,
                child: Text(
                  "$amal",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "$_natija",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                color: Colors.black12,
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.height * 0.4818,
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  natija = "";
                  _natija = "0";
                  amal = "";
                  buttonTap();
                },
                child: Text("AC",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), minimumSize: Size(75, 75)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("+/-",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), minimumSize: Size(75, 75)),
              ),
              ElevatedButton(
                onPressed: () {
                  amal += "/";
                  num1 = int.parse(natija);
                  buttonTap();
                  natija = "";
                },
                child: Text("/",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), minimumSize: Size(75, 75)),
              ),
              ElevatedButton(
                onPressed: () {
                  natija = natija.substring(0, natija.length - 1);

                  buttonTap();
                },
                child: Text("Del",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), minimumSize: Size(75, 75)),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  natija = natija + "7";
                  buttonTap();
                },
                child: Text("7",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), minimumSize: Size(75, 75)),
              ),
              ElevatedButton(
                onPressed: () {
                  natija += "8";
                  buttonTap();
                },
                child: Text("8",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), minimumSize: Size(75, 75)),
              ),
              ElevatedButton(
                onPressed: () {
                  natija += "9";
                  buttonTap();
                },
                child: Text("9",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), minimumSize: Size(75, 75)),
              ),
              ElevatedButton(
                onPressed: () {
                  amal += "x";
                  num1 = int.parse(natija);
                  buttonTap();
                  natija = "";
                },
                child: Text("x",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), minimumSize: Size(75, 75)),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  natija += "4";
                  buttonTap();
                },
                child: Text("4",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), minimumSize: Size(75, 75)),
              ),
              ElevatedButton(
                onPressed: () {
                  natija += "5";
                  buttonTap();
                },
                child: Text("5",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), minimumSize: Size(75, 75)),
              ),
              ElevatedButton(
                onPressed: () {
                  natija += "6";
                  buttonTap();
                },
                child: Text("6",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), minimumSize: Size(75, 75)),
              ),
              ElevatedButton(
                onPressed: () {
                  amal += "-";
                  num1 = int.parse(natija);
                  buttonTap();
                  natija = "";
                },
                child: Text("-",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), minimumSize: Size(75, 75)),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  natija += "1";
                  buttonTap();
                },
                child: Text("1",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), minimumSize: Size(75, 75)),
              ),
              ElevatedButton(
                onPressed: () {
                  natija += "2";
                  buttonTap();
                },
                child: Text("2",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), minimumSize: Size(75, 75)),
              ),
              ElevatedButton(
                onPressed: () {
                  natija += "3";
                  buttonTap();
                },
                child: Text("3",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), minimumSize: Size(75, 75)),
              ),
              ElevatedButton(
                onPressed: () {
                  amal += "+";
                  num1 = int.parse(natija);
                  buttonTap();
                  natija = "";
                },
                child: Text("+",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), minimumSize: Size(75, 75)),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  natija += "0";
                  buttonTap();
                },
                child: Text("0",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), minimumSize: Size(75, 75)),
              ),
              ElevatedButton(
                onPressed: () {
                  natija += ".";
                  buttonTap();
                },
                child: Text(".",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), minimumSize: Size(75, 75)),
              ),
              ElevatedButton(
                onPressed: () {
                  num2 = int.parse(natija);
                  teng();

                  buttonTap();
                },
                child: Text("=",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), minimumSize: Size(75, 75)),
              ),
            ],
          )
        ],
      ),
    );
  }

  teng() {
    if (amal == "+") {
      _natija = (num1 + num2).toString();
    } else if (amal == "-") {
      _natija = (num1 - num2).toString();
    } else if (amal == "x") {
      _natija = (num1 * num2).toString();
    } else if (amal == "/") {
      _natija = (num1 ~/ num2).toString();
    } else {}
  }
}
