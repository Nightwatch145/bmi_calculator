import 'package:flutter/material.dart';
import 'package:bmi_calculator/bmi_intro.dart';

class BmiApp extends StatelessWidget{
  const BmiApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BMI Calculator',
        home:const BMIIntro(),
        theme: ThemeData(
            brightness: Brightness.light,
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.purple.shade100,
              shape:const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20)
                ),
              ),
              toolbarHeight: 95,
              foregroundColor: Colors.black,
            ),
            inputDecorationTheme: InputDecorationTheme(
                labelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.black,
                    letterSpacing: 1.5
                ),
                floatingLabelAlignment: FloatingLabelAlignment.center,
                floatingLabelStyle: const TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w500
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:const BorderSide(color: Colors.black)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.black)
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.black)
                )
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(500, 60),
                    backgroundColor: Colors.purple.shade100,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)
                    ),
                )
            )
        )
    );
  }
}