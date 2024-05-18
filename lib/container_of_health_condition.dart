
import 'package:flutter/material.dart';

class health_condition extends StatefulWidget
{
  final double ans;
  const health_condition({super.key, required this.ans});
  @override
  State<StatefulWidget> createState()=> _health_condition();
}
class _health_condition extends State<health_condition>
{
  late String text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        width: 150,
        height: 45,
        decoration: BoxDecoration(
            color: Colors.purple.shade100,
            borderRadius: BorderRadius.circular(15)
        ),
        child: Center(
          child: Text(text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.5,
            ),),
        ),
      ),
    );
  }
  void condion_color (String text)
  {
    if(widget.ans <=15.9)
      {
        text = 'Very Severly Underweight';
      }
    else if((widget.ans >= 16.00) && (widget.ans <=16.9))
    {
      text = 'Severly Underweight';
    }
    else if((widget.ans >= 17.00) && (widget.ans <=18.4))
    {
      text = 'Underweight';
    }
    else if((widget.ans >= 18.5) && (widget.ans <=24.9))
    {
      text = 'Normal';
    }
    else if((widget.ans >= 25.00) && (widget.ans <=29.9))
    {
      text = 'Obese Class |';
    }
    else if((widget.ans >= 30.0) && (widget.ans <=34.9))
    {
      text = 'Obese Class ||';
    }
    else if((widget.ans >= 35.0) && (widget.ans <=39.9))
    {
      text = 'Obese Class |||';
    }
  }
}
