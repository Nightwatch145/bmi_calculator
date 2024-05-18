import 'package:bmi_calculator/input_screen.dart';
import 'package:flutter/material.dart';

class BMIIntro extends StatelessWidget{
  const BMIIntro({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: SingleChildScrollView(
        child: Column(
          children:
            [
             Padding(
          padding: const EdgeInsets.only(top: 140, left: 20, right: 20),
               child: Container(
                 height: MediaQuery.of(context).size.height * 0.45,
                 decoration: const BoxDecoration(
                   image: DecorationImage(
                       image:AssetImage('images/bmi intro page.jpg'),
                     fit: BoxFit.contain
                   )
                 ),
               ),
             ),
              const SizedBox(height: 85),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                 height:MediaQuery.of(context).size.height * 0.27,
                  width: MediaQuery.of(context).size.width * 0.90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey.shade200,
                  ),
                 child: Column(
                   children: [
                     const SizedBox(height: 20,),
                     const Text('What is BMI?',
                     style: TextStyle(
                       fontSize: 26,
                       fontWeight: FontWeight.bold,
                     ),
                     ),
                     const SizedBox(height: 30),
                     const Text(
                       'Body Mass Index (BMI) is a person’s weight in kilograms divided by the square of height in meters.',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 17,
                         fontWeight: FontWeight.w500
                       ),
                       ),
                     const SizedBox(height: 35),
                     ElevatedButton(onPressed:
                         (){
                       Navigator.push(
                         context,
                         MaterialPageRoute
                           (builder: (context)=> const InputScreen(),),);
                         },
                         child: const Text('Next', style: TextStyle(
                           fontSize: 23,
                         ), ),
                     )
                   ],
                 )
                ),
              )
            ]
        ),
      )
    )
  );
  }
}