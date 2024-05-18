import 'package:bmi_calculator/gender_container.dart';
import 'package:bmi_calculator/result_screen.dart';
import 'package:flutter/material.dart';
enum Gender
{
  male, female, neutral
}
class InputScreen extends StatefulWidget
{
  const InputScreen({super.key});

  @override
  State<StatefulWidget> createState() => _InputScreen();
}
class _InputScreen extends State<InputScreen>
{
  Color inactiveColor = Colors.white;
  Color activeColorForMale = Colors.lightBlue.shade100;
  Color activeColorForFemale = Colors.pink.shade100;
 Gender selectedGender = Gender.neutral;
 final TextEditingController ageTEcontroller = TextEditingController();
 final TextEditingController weightTEcontroller = TextEditingController();
 final TextEditingController heightFtTEcontroller = TextEditingController();
 final TextEditingController heightInTEcontroller = TextEditingController();
 double ans = 0;
 @override
 void dispose()
 {
   ageTEcontroller.dispose();
   weightTEcontroller.dispose();
   heightFtTEcontroller.dispose();
   heightInTEcontroller.dispose();
   super.dispose();
 }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text('Health Tracker', style:
          TextStyle(
            fontSize: 24,
              letterSpacing: 1.5
          ),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: IconButton(onPressed: (){
              dispose();
            },
                icon: const Icon(Icons.refresh_sharp, color: Colors.black,size: 30)
            ),
          )
        ],
      ),
     body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.all(30),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const Text('Select your Gender: ', textAlign: TextAlign.start,
             style: TextStyle(
               fontSize: 21,
               fontWeight: FontWeight.bold,
               letterSpacing: 1.5
             )),
             const SizedBox(height: 20),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 GestureDetector(
                  onTap: (){
                    selectedGender = Gender.male;
                    setState(() {
                    });
                  },
                  child: GenderContainer(height: MediaQuery.of(context).size.height* 0.28,
                  width:MediaQuery.of(context).size.width * 0.4,
                    heightOfImage:MediaQuery.of(context).size.height* 0.22 ,
                    widthOfImage: MediaQuery.of(context).size.width * 0.29,
                    color: (selectedGender==Gender.male) ? activeColorForMale:inactiveColor,
                    text: 'Male',
                  )
                 ),
                 GestureDetector(
                   onTap: (){
                     selectedGender = Gender.female;
                     setState(() {
                     });
                   },
                     child: GenderContainer(height: MediaQuery.of(context).size.height* 0.28,
                       width:MediaQuery.of(context).size.width * 0.4,
                       heightOfImage:MediaQuery.of(context).size.height* 0.22 ,
                       widthOfImage: MediaQuery.of(context).size.width * 0.29,
                       color: (selectedGender==Gender.female) ? activeColorForFemale:inactiveColor,
                       text: 'Female',
                     )
                 ),
               ],
             ),
             const SizedBox(height: 35,),
             const Text('Enter your information: ',
                 style: TextStyle(
                     fontSize: 21,
                     fontWeight: FontWeight.bold,
                     letterSpacing: 1.5
                 )
             ),
             const SizedBox(height: 20),
             Wrap(
                   children: [
                     Padding(
                       padding:const EdgeInsets.only(left: 0),
                       child: SizedBox(
                         width: 160,
                         height: 100,
                         child: TextFormField(
                           keyboardType: TextInputType.number,
                           controller: ageTEcontroller,
                           decoration:const InputDecoration(
                             labelText: 'Age',
                           ),
                         ),
                       ),
                     ),
                   const SizedBox(width: 68),
                     SizedBox(
                       width: 160,
                       height: 100,
                       child: TextFormField(
                         keyboardType: TextInputType.number,
                         controller: weightTEcontroller,
                         decoration: const InputDecoration(
                             labelText: 'Weight(kg)',
                         ),
                       ),
                     ),
                   ],
             ),
             Wrap(
               children: [
                 Padding(
                   padding:const EdgeInsets.only(left: 0),
                   child: SizedBox(
                     width: 160,
                     height: 100,
                     child: TextFormField(
                       keyboardType: TextInputType.number,
                       controller: heightFtTEcontroller,
                       decoration:const InputDecoration(
                           labelText: 'Height (ft)',
                       ),
                     ),
                   ),
                 ),
                 const SizedBox(width: 68),
                 SizedBox(
                   width: 160,
                   height: 100,
                   child: TextFormField(
                     keyboardType: TextInputType.number,
                     controller: heightInTEcontroller,
                     decoration: const InputDecoration(
                         labelText: 'Height (in)',
                     ),
                   ),
                 ),
               ],
             ),
             const SizedBox(height: 30,),
             ElevatedButton(onPressed: (){
               double ? ft = double.tryParse(heightFtTEcontroller.text) ?? 0;
               double ? inch = double.tryParse(heightInTEcontroller.text) ?? 0;
               double ? weight = double.tryParse(weightTEcontroller.text) ?? 0;
               double ? meter = (ft * 12 + inch) * 0.0254;
                ans = weight/ (meter * meter);
                setState(() {
                });
               Navigator.push(context, MaterialPageRoute(builder: (context)=>BmiResult(ans : ans),),);
             },
                 child: const Text('Calculate your BMI->',
                 textAlign: TextAlign.center,
                 style:TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.w600,
                   letterSpacing: 1.5
                 ) ,
                 )
             )
           ],
         ),
       ),
     )
   );
  }
}