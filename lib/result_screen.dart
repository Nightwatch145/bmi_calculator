import 'package:bmi_calculator/bmi_range_advice.dart';
import 'package:bmi_calculator/bmi_range_color.dart';
import 'package:bmi_calculator/bmi_range_result.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class BmiResult extends StatefulWidget
{
   final double ans;

  const BmiResult({super.key, required this.ans});

  @override
  State<BmiResult> createState() => _BmiResultState();
}

class _BmiResultState extends State<BmiResult> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       appBar: AppBar(
       title: const Text('Your BMI result', style:
       TextStyle(
       fontSize: 24,
       letterSpacing: 1.5
   ),),),

    body: SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Padding(
               padding:const EdgeInsets.only(top: 10, left: 30, right: 30),
              child: SizedBox(
                height: 290,
                width:270,
                child: buildSfRadialGauge(),
              ),
            ),
            Container(
              width: 160,
              height: 55,
              decoration: BoxDecoration(
                  color: Colors.purple.shade100,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Center(
                child: Text(bmi_range_result.getBmiText(widget.ans),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.5,
                  ),),
              ),
            ),
             const SizedBox(height: 20),
             Container(
               width: 400,
               height: 205,
               decoration: BoxDecoration(
                 color: Colors.grey.shade100,
                 borderRadius: BorderRadius.circular(20),
                 boxShadow: [
                   BoxShadow(
                     color: Colors.grey.withOpacity(0.3),
                     blurRadius: 20,
                     spreadRadius: 0,
                     offset: const Offset(0,9)
                   )
                 ]
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(10),
                     child: Icon(Icons.info_outline_rounded, size:34,
                         color: bmi_range_color.getBmiColor(widget.ans),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 10, right: 10, top: 3),
                     child: Text(bmi_range_advice.getAdvice(widget.ans),
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: bmi_range_color.getBmiColor(widget.ans),
                       fontSize: 16,
                       fontWeight: FontWeight.w700,
                       letterSpacing: 1.5,
                     )
                     ),
                   )
                 ],
               )
             ),
             const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only( top: 2,right: 30, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Very Severely Underweight',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      letterSpacing: 1.5,
                        color: (widget.ans <= 15.9) ? Colors.blue : Colors.black,
                    ),
                  ),
                  Text('<=15.9',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        letterSpacing: 1.5,
                        color: (widget.ans <= 15.9) ? Colors.blue : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 30, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Severely Underweight',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        letterSpacing: 1.5,
                        color: (widget.ans >= 16.00) && (widget.ans <=16.9)? Colors.blue : Colors.black
                    ),
                  ),
                  Text('16.0 - 16.9',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        letterSpacing: 1.5,
                        color: (widget.ans >= 16.00) && (widget.ans <=16.9)? Colors.blue : Colors.black
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 30, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Underweight',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        letterSpacing: 1.5,
                        color: (widget.ans >= 17.00) && (widget.ans <=18.4)? Colors.blue: Colors.black,
                    ),
                  ),
                  Text('17.0 - 18.4',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        letterSpacing: 1.5,
                        color: (widget.ans >= 17.00) && (widget.ans <=18.4)? Colors.blue : Colors.black
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 30, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Normal',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        letterSpacing: 1.5,
                        color: (widget.ans >= 18.5) && (widget.ans <=24.9)? Colors.green.shade600 : Colors.black
                    ),
                  ),
                  Text('18.5 - 24.9',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        letterSpacing: 1.5,
                        color: (widget.ans >=18.5) && (widget.ans <=24.9)? Colors.green.shade600 : Colors.black,
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 30, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Overweight',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        letterSpacing: 1.5,
                        color: (widget.ans >= 25.00) && (widget.ans <=29.9)? Colors.yellow.shade600 : Colors.black
                    ),
                  ),
                  Text('25.0 - 29.9',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        letterSpacing: 1.5,
                        color: (widget.ans >= 25.00) && (widget.ans <=29.9)? Colors.yellow.shade700 : Colors.black
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 30, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Obese Class |',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        letterSpacing: 1.5,
                      color: (widget.ans >= 30.0) && (widget.ans <=34.9)? Colors.orange.shade600 : Colors.black,
                    ),
                  ),
                  Text('30.0 - 34.9',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        letterSpacing: 1.5,
                        color: (widget.ans >= 30.0) && (widget.ans <=34.9)? Colors.orange.shade600 : Colors.black,
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 30, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Obese Class ||',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        letterSpacing: 1.5,
                        color: (widget.ans >= 35.0) && (widget.ans <=39.9)? Colors.orange.shade600 : Colors.black
                    ),
                  ),
                  Text('35.0 - 39.9',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        letterSpacing: 1.5,
                        color: (widget.ans >= 35.0) && (widget.ans <=39.9)? Colors.orange.shade600 : Colors.black
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 30, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Obese Class |||',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        letterSpacing: 1.5,
                        color: (widget.ans >= 40.00) && (widget.ans <=100.00)? Colors.red.shade600 : Colors.black
                    ),
                  ),
                  Text('>=45.0',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        letterSpacing: 1.5,
                        color: (widget.ans >= 40.00) && (widget.ans <=100.00)? Colors.red.shade600 : Colors.black,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
   );
  }
  SfRadialGauge buildSfRadialGauge() {
    return SfRadialGauge(
              axes: <RadialAxis>[
              RadialAxis(minimum: 10, maximum: 45, ranges: <GaugeRange>[
                GaugeRange(
                    startValue: 10,
                    endValue: 18.4,
                    color: Colors.blue,
                    startWidth: 5,
                    ),
              GaugeRange(
              startValue: 18.5,
              endValue: 24.9,
              color: Colors.green,
              ),
                GaugeRange(
                    startValue: 25,
                    endValue: 29.9,
                    color: Colors.yellow.shade600,
                   ),
              GaugeRange(
              startValue: 30,
              endValue: 39.9,
              color: Colors.orange,
              ),
              GaugeRange(
              startValue: 40,
              endValue: 45,
              color: Colors.red,
              endWidth: 5)
              ], pointers: <GaugePointer>[
              NeedlePointer(value: widget.ans)
              ], annotations: <GaugeAnnotation>[
              GaugeAnnotation(
              widget: Text(widget.ans.toStringAsFixed(1).toString(),
              style: const TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold)),
              angle: 90,
              positionFactor: 0.6)
              ])
              ]);
  }
}
