import 'package:collage_management/Screens/login_screen/login_screen.dart';
import 'package:collage_management/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SplashScreen extends StatelessWidget {
static String routeName='SplashScreen';

  @override
  Widget build(BuildContext context) {


    Future.delayed(Duration(seconds:3),(){
      Navigator.pushNamedAndRemoveUntil(context, Loginscreen.routeName, (route) => false);
    });


    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(

        child:  Image.asset('assets/images/gotocollage1.gif',),
      ),
    );
  }
}
