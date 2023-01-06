import 'package:flutter/material.dart';
import 'constant.dart';
class RepeatContainerCode extends StatelessWidget {
  
  RepeatContainerCode({
   required this.colors ,required this.cardwidget
  });
   final Color colors;
   final Widget cardwidget;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(10.0)),
    child: cardwidget,
    );
  }
}
