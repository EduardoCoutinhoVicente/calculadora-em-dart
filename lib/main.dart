import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String text = '0';
  double numOne = 0;
  double numTwo = 0;
  String result = '';
  String finalResult = '';
  String opr = '';
  String preOpr = '';

Widget calcButton(String btnText, Color btnColor, Color textColor, {bool isLarge = false}) {
  double buttonSize = isLarge ? 120.0 : 60.0; // Tamanho personalizado para o botão 0
  double fontSize = isLarge ? 32.0 : 24.0; // Tamanho do texto

  return Container(
    margin: EdgeInsets.all(5.0),
    child: ElevatedButton(
      onPressed: () {
        calculation(btnText);
      },
      style: ElevatedButton.styleFrom(
        primary: btnColor,
        minimumSize: Size(buttonSize, 60.0), // Altura fixa de 60.0
        shape: isLarge ? CircleBorder() : RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)), // Define a forma do botão
      ),
      child: Text(
        '$btnText',
        style: TextStyle(
          fontSize: fontSize,
          color: textColor,
        ),
      ),
    ),
  );
}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(20.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  '$text',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48.0,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      calcButton('AC', Colors.grey, Colors.black),
                      calcButton('+/-', Colors.grey, Colors.black),
                      calcButton('%', Colors.grey, Colors.black),
                      calcButton('/', Colors.amber, Colors.white),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      calcButton('7', Colors.grey, Colors.white),
                      calcButton('8', Colors.grey, Colors.white),
                      calcButton('9', Colors.grey, Colors.white),
                      calcButton('x', Colors.amber, Colors.white),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      calcButton('4', Colors.grey, Colors.white),
                      calcButton('5', Colors.grey, Colors.white),
                      calcButton('6', Colors.grey, Colors.white),
                      calcButton('-', Colors.amber, Colors.white),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      calcButton('1', Colors.grey, Colors.white),
                      calcButton('2', Colors.grey, Colors.white),
                      calcButton('3', Colors.grey, Colors.white),
                      calcButton('+', Colors.amber, Colors.white),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      calcButton('0', Colors.grey, Colors.white, isLarge: true),
                      calcButton('.', Colors.grey, Colors.white),
                      calcButton('=', Colors.amber, Colors.white),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void calculation(String btnText) {
    // Seu código de cálculo aqui
    // ...
  }
}
