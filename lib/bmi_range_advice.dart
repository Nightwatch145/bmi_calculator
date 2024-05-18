mixin bmi_range_advice {
  static getAdvice(double ans)
  {
    if(ans <= 15.9)
    {
      return "Your BMI indicates you are very severely underweight. It's important to consult a healthcare provider to address any underlying health issues and develop a plan to achieve a healthier weight.";
    }
    if(ans>= 16 && ans <= 16.9)
    {
      return "You are severely underweight according to your BMI. Please consider seeing a healthcare professional to ensure there are no underlying conditions and to get guidance on gaining weight safely.";
    }
    if(ans>= 17.0 && ans <= 18.4)
    {
      return "Your BMI shows that you are underweight. It's recommended to consult with a healthcare provider or nutritionist to discuss dietary changes and ensure you are getting adequate nutrition.";
    }
    if(ans>= 18.5 && ans<= 24.9)
    {
      return "Your BMI is within the normal range. Continue maintaining a balanced diet and regular exercise to keep your body healthy. Great job!";
    }
    if(ans>= 25.0 && ans<= 29.9)
    {
      return "You are considered overweight based on your BMI. Incorporating healthier eating habits and regular physical activity can help you reach a healthier weight.";
    }
    if(ans>= 30.0 && ans<= 34.9)
    {
      return "Your BMI indicates that you are in the Obese Class 1 category. It's important to work with a healthcare provider to develop a weight-loss plan that includes a balanced diet and regular exercise.";
    }
    if(ans>= 35.0 && ans<= 39.9)
    {
      return "You are in the Obese Class 2 category according to your BMI. Professional guidance from a healthcare provider is essential to address potential health risks and create an effective weight management plan.";
    }
    if(ans>= 40 && ans<= 100)
    {
      return "Your BMI places you in the Obese Class 3 category, which is very severe. Immediate medical intervention is recommended to address serious health risks and to support you in achieving a healthier weight.";
    }
}
}