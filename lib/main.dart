import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  late TextEditingController controllerFirstNumber = TextEditingController();
  late TextEditingController controllerSecondNumber = TextEditingController();
  double? sum;
  void initstate() {
    controllerFirstNumber = TextEditingController();
    controllerSecondNumber = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: controllerFirstNumber,
              keyboardType: TextInputType.number,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    if (controllerFirstNumber.text.isEmpty) {
                      controllerFirstNumber.text = "0";
                    }
                    if (controllerSecondNumber.text.isEmpty) {
                      controllerSecondNumber.text = "0";
                    }
                    sum = double.parse(controllerFirstNumber.text) +
                        double.parse(controllerSecondNumber.text);
                    setState(() {});
                  },
                  icon: Icon(Icons.add),
                ),
                TextButton(
                  onPressed: () {
                    if (controllerFirstNumber.text.isEmpty) {
                      controllerFirstNumber.text = "0";
                    }
                    if (controllerSecondNumber.text.isEmpty) {
                      controllerSecondNumber.text = "0";
                    }
                    sum = double.parse(controllerFirstNumber.text) -
                        double.parse(controllerSecondNumber.text);
                    setState(() {});
                  },
                  child: Text(
                    "-",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextButton(
                    onPressed: () {
                      if (controllerFirstNumber.text.isEmpty) {
                        controllerFirstNumber.text = "0";
                      }
                      if (controllerSecondNumber.text.isEmpty) {
                        controllerSecondNumber.text = "0";
                      }
                      sum = double.parse(controllerFirstNumber.text) *
                          double.parse(controllerSecondNumber.text);
                      setState(() {});
                    },
                    child: Text(
                      "*",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (controllerFirstNumber.text.isEmpty) {
                      controllerFirstNumber.text = "0";
                    }
                    if (controllerSecondNumber.text.isEmpty) {
                      controllerSecondNumber.text = "0";
                    }
                    sum = double.parse(controllerFirstNumber.text) /
                        double.parse(controllerSecondNumber.text);
                    setState(() {});
                  },
                  child: Text(
                    "/",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            TextField(
              controller: controllerSecondNumber,
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                if (controllerFirstNumber.text.isEmpty) {
                  controllerFirstNumber.text = "0";
                }
                if (controllerSecondNumber.text.isEmpty) {
                  controllerSecondNumber.text = "0";
                }
                sum = double.parse(controllerFirstNumber.text) +
                    double.parse(controllerSecondNumber.text);
                setState(() {});
              },
              child: Text("Set State"),
            ),
            Text(
              "=",
              style: TextStyle(fontSize: 40),
            ),
            Text(
              "$sum",
            ),
          ],
        ),
      ),
    );
  }
}
