import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constant.dart';
import 'calculateValue.dart';
import 'iconText.dart';
import 'repeatContainer.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int sliderHeight = 180;
  int sliderWeight = 50;
  int sliderAge = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RepeatContainerCode(
                    colors: Color(0xFF1DE33),
                    cardwidget: RepeatIconsAndText(
                      iconData: Icons.male,
                      label: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: RepeatContainerCode(
                    colors: Color(0xFF1DE33),
                    cardwidget: RepeatIconsAndText(
                      iconData: Icons.female,
                      label: 'FeMale',
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: RepeatContainerCode(
                  colors: Color(0xFF1DE33),
                  cardwidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('HEIGHT', style: kLabelStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            sliderHeight.toString(),
                            style: kNumberSyle,
                          ),
                          Text(
                            'cm',
                            style: kLabelStyle,
                          )
                        ],
                      ),
                      Slider(
                          value: sliderHeight.toDouble(),
                          min: 100.0,
                          max: 220.0,
                          activeColor: Colors.green,
                          inactiveColor: Colors.white,
                          onChanged: (double newValue) {
                            setState(() {
                              sliderHeight = newValue.round();
                            });
                          })
                    ],
                  ),
                ),
              )
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: RepeatContainerCode(
                  colors: Color(0xFF1DE33),
                  cardwidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: kLabelStyle,
                      ),
                      Text(sliderWeight.toString(), style: kNumberSyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIcon(
                            iconData: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() {
                                sliderWeight--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 3.0,
                          ),
                          RoundIcon(
                            iconData: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() {
                                sliderWeight++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: RepeatContainerCode(
                  colors: Color(0xFF1DE33),
                  cardwidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: kLabelStyle,
                      ),
                      Text(sliderAge.toString(), style: kNumberSyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIcon(
                            iconData: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() {
                                sliderAge--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 2.0,
                          ),
                          RoundIcon(
                            iconData: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() {
                                sliderAge++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
          GestureDetector(
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: sliderHeight, weight: sliderWeight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultScreen(
                    bmiResult: calc.calculateBMI(),
                    bmiresultText: calc.getResult(),
                    bmiinterpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Calculate',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundIcon extends StatelessWidget {
  RoundIcon({required this.iconData, required this.onPress});

  final IconData iconData;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: (() {}),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 30.0,
        width: 30.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
