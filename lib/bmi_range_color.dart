import 'package:flutter/material.dart';

mixin bmi_range_color {
  static getBmiColor(double ans)
  {
    if(ans <= 15.9)
    {
      return Colors.blue.shade700;
    }
    if(ans>= 16 && ans <= 16.9)
    {
      return Colors.blue.shade700;
    }
    if(ans>= 17.0 && ans <= 18.4)
    {
      return Colors.blue.shade700;
    }
    if(ans>= 18.5 && ans<= 24.9)
    {
      return Colors.green.shade700;
    }
    if(ans>= 25.0 && ans<= 29.9)
    {
      return Colors.yellow.shade800;
    }
    if(ans>= 30.0 && ans<= 34.9)
    {
      return Colors.orange.shade800;
    }
    if(ans>= 35.0 && ans<= 39.9)
    {
      return Colors.orange.shade800;
    }
    if(ans>= 40 && ans<= 100)
    {
      return Colors.red.shade600;
    }
  }
}