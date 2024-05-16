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
            child: IconButton(onPressed: (){},
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
                   child: Container(
                     height: MediaQuery.of(context).size.height* 0.28,
                     width: MediaQuery.of(context).size.width * 0.4,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20.00),
                       color: (selectedGender== Gender.male) ? activeColorForMale: inactiveColor,
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
                           height: MediaQuery.of(context).size.height* 0.22,
                           width: MediaQuery.of(context).size.width * 0.29,
                           decoration: const BoxDecoration(
                               shape: BoxShape.circle,
                               image: DecorationImage
                                 (
                                   image: AssetImage('images/male head.jpg')
                               ),
                           ),
                         ),
                         const Text ('Male',style: TextStyle(
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                             letterSpacing: 1.5
                         ),
                         textAlign: TextAlign.center,
                         )
                       ],
                     ),
                   ),
                 ),
                 GestureDetector(
                   onTap: (){
                     selectedGender = Gender.female;
                     setState(() {
                     });
                   },
                   child: Container(
                     height: MediaQuery.of(context).size.height* 0.28,
                     width: MediaQuery.of(context).size.width * 0.4,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20.00),
                         color: (selectedGender==Gender.female) ? activeColorForFemale:inactiveColor,
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
                           height: MediaQuery.of(context).size.height* 0.22,
                           width: MediaQuery.of(context).size.width * 0.29,
                           decoration: const BoxDecoration(
                             shape: BoxShape.circle,
                             image: DecorationImage
                               (
                                 image: AssetImage('images/female head.jpg')
                             ),
                           ),
                         ),
                         const Text ('Female',style: TextStyle(
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                             letterSpacing: 1.5
                         ),
                           textAlign: TextAlign.center,
                         )
                       ],
                     ),
                   ),
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
                     decoration: const InputDecoration(
                         labelText: 'Height (in)',
                     ),
                   ),
                 ),
               ],
             ),
             const SizedBox(height: 30,),
             ElevatedButton(onPressed: (){},
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