mixin bmi_range_result {
  static getBmiText(double ans)
  {
    if(ans <= 15.9)
      {
        return "Very Severly Underweight";
      }
    if(ans>= 16 && ans <= 16.9)
    {
      return "Severly Underweight";
    }
    if(ans>= 17.0 && ans <= 18.4)
    {
      return "Underweight";
    }
    if(ans>= 18.5 && ans<= 24.9)
    {
      return "Normal";
    }
    if(ans>= 25.0 && ans<= 29.9)
    {
      return "Overweight";
    }
    if(ans>= 30.0 && ans<= 34.9)
    {
      return "Obese Class |";
    }
    if(ans>= 35.0 && ans<= 39.9)
    {
      return "Obese Class ||";
    }
    if(ans>= 40 && ans<= 100)
    {
      return "Obese Class |||";
    }
  }
}