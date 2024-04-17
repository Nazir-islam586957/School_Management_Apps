 import 'package:collage_management/Screens/home_screen/home_screen.dart';
import 'package:collage_management/constants.dart';
import 'package:collage_management/teacher_nfo/DTNT_Teacher/dtnt_teacher_data.dart';
import 'package:collage_management/teacher_nfo/Principal_data.dart';
import 'package:collage_management/teacher_nfo/RS%20Teacher/Rs%20Teacher_Data.dart';
import 'package:collage_management/teacher_nfo/TCT_Tecaher/tct_teacher_data.dart';
import 'package:collage_management/teacher_nfo/cst_Teacher/Cst_teacher_data.dart';
import 'package:flutter/material.dart';

class TeacherScreen extends StatelessWidget {
   const TeacherScreen({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
debugShowCheckedModeBanner: false,
       home: Scaffold(
         //backgroundColor: Colors.white38,
         appBar: AppBar(
         centerTitle: true,
         title: const Text('Department Teacher'),
       ),
         body: Container(
             width: double.maxFinite,
             height: double.maxFinite,
             decoration: BoxDecoration(
               gradient: LinearGradient(
                 colors: [Colors.indigo, Color.fromARGB(255, 70, 400, 140)],
               ),
             ),

         child: Column(
             children: [
               Stack(
                 children: [
                //   Image.asset("assets/images/itbacground5.jpg",height: 600,),

                   Container(
                     width: MediaQuery.of(context).size.height,
                     height: 470,
                     child: Column(
                       children: [sizedBox,
                         Container(
                           height: 60,
                           width: 150,
                           decoration: BoxDecoration(
                             color: Colors.teal,
                             borderRadius: BorderRadius.circular(20),
                           ),
                           child: TextButton(
                               onPressed: () {
                                 Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                         builder: (context) => Principal_Data()));
                               },
                               child: Text(
                                 "PRINCIPAL",
                                 style: TextStyle(
                                     fontSize: 22,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.white),
                               )),
                         ),
                         sizedBox,
                         Container(
                           height: 60,
                           width: 150,
                           decoration: BoxDecoration(
                             color: Colors.teal,
                             borderRadius: BorderRadius.circular(20),
                           ),
                           child: TextButton(
                               onPressed: () {
                                 Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                         builder: (context) => CST_Teacher_Data()));
                               },
                               child: Text(
                                 "CST",
                                 style: TextStyle(
                                     fontSize: 22,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.white),
                               )),
                         ),
                         sizedBox,
                         Container(
                           height: 60,
                           width: 150,
                           decoration: BoxDecoration(
                             color: Colors.teal,
                             borderRadius: BorderRadius.circular(20),
                           ),
                           child: TextButton(
                               onPressed: () {
                                 Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                         builder: (context) => DTNT_Teacher_Data()));
                               },
                               child: Text(
                                 "DTNT",
                                 style: TextStyle(
                                     fontSize: 22,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.white),
                               )),
                         ),
                         sizedBox,
                         Container(
                             height: 60,
                             width: 150,
                           decoration: BoxDecoration(
                             color: Colors.teal,
                             borderRadius: BorderRadius.circular(20),
                           ),
                           child: TextButton(
                               onPressed: () {
                                 Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                         builder: (context) => TCT_Teacher_Data()));
                               },
                               child: Text(
                                 "TCT",
                                 style: TextStyle(
                                     fontSize: 22,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.white),
                               )),
                         ),
                         sizedBox,
                         Container(
                           height: 60,
                           width: 150,
                           decoration: BoxDecoration(
                             color: Colors.teal,
                             borderRadius: BorderRadius.circular(20),
                           ),
                           child: TextButton(
                               onPressed: () {
                         Navigator.push(
                         context,
                         MaterialPageRoute(
                         builder: (context) => RS_Teacher_Data()));
                               },
                               child: Text(
                                 "RS",
                                 style: TextStyle(
                                     fontSize: 22,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.white),
                               )),
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
             ],
           ),
         ),






       ),
     );

   }
 }
