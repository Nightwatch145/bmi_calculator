import 'package:flutter/material.dart';

class GenderContainer extends StatelessWidget
{
  final double height, width, heightOfImage, widthOfImage;
  final Color color;
  final String text;

  const GenderContainer({super.key, required this.height, required this.width, required this.heightOfImage, required this.widthOfImage,required this.color,  required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height:height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.00),
          color: color,
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 1,
            )
          ]
      ),
      child: Column(
        children: [
          Container(
            height: heightOfImage,
            width: widthOfImage,
            decoration:  BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage
                (
                  image: AssetImage((text=='Male')? 'images/male head.jpg' : 'images/female head.jpg')
              ),
            ),
          ),
          Text (text,style:const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5
          ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}