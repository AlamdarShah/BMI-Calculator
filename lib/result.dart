import 'package:flutter/material.dart';
import 'inputpage.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(
      {
      required this.bmiResult,
      required this.bmiresultText,
      required this.bmiinterpretation
      });

  final String bmiResult;
  final String bmiresultText;
  final String bmiinterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // color: Color(0xFF1DE33),
                  child: Center(
                    child: Text(
                      bmiresultText,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  // color: Color(0xFF1DE33),
                  child: Center(
                    child: Text(
                      bmiResult,
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  // color: Color(0xFF1DE33),
                  child: Center(
                    child: Text(
                      bmiinterpretation,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InputPage()));
              },
              child: Container(
                color: Colors.blue,

                width: double.infinity,
                height: 80.0,
                child: Center(
                  child: Text('ReCalculate'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
