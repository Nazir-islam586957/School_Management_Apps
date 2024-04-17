import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class About_US_Data extends StatelessWidget {
  const About_US_Data({super.key});

  @override
  Widget build(BuildContext context) {  final TextEditingController _numberCtrl = TextEditingController();
  return Scaffold(
    appBar: AppBar(
      title: Text('About Us'),
    ),
    body: ListView(
      children: [
        Card(
          child: Column(
            children: [
              Image.asset(
                "assets/images/nazir.png",
                height: 250,
              ),
              Text(
                ' Developed By Nazir Islam\n'
                    ' Batch:17th\n Phone: +8801645116798\n Email:nazirislam586957@gmail.com\n',
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              GestureDetector(
                onTap: ()async{
                  const number = '+8801645116798'; //set the number here
                  bool? res = await FlutterPhoneDirectCaller.callNumber(number);},
               child: Container(height: 45,
                  child: Image.asset("assets/teachers/call_now.png"),

                ),

                ),

              SizedBox(height: 20,),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 5,
          color: Colors.white,
          margin: EdgeInsets.all(20),

        ),


      ],
    ),
  );
  }
}
