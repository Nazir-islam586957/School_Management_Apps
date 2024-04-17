import 'package:collage_management/Screens/assainment_screen/assaignment_screen.dart';
import 'package:collage_management/Screens/datasheet_screen/datasheet_screen.dart';
import 'package:collage_management/Screens/fee_screen/fee_screen.dart';
import 'package:collage_management/Screens/home_screen/Drawer/Drawer.dart';
import 'package:collage_management/Screens/home_screen/home_screen.dart';
import 'package:collage_management/Screens/my_profile/my_profile.dart';
import 'package:collage_management/Screens/result_screen/result_screen.dart';
import 'package:collage_management/Screens/splash_screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';

import 'Screens/login_screen/login_screen.dart';
import 'Screens/home_screen/home_bteb.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  Loginscreen.routeName: (context) => Loginscreen(),
  Home2.routeName: (context) => Home2(),
  HomeScreen.routeName: (context) => HomeScreen(),
  MyProfileScreen.routeName: (context) => MyProfileScreen(),
  FeeScreen.routeName: (context) => FeeScreen(),
  AssainmentScreen.routeName: (context) => AssainmentScreen(),
  // MyHomePage.routeName: (context) => MyHomePage(title: '',),
  DataSheetScreen.routeName: (context) => DataSheetScreen(),
  ResultScreen.routeName: (context) => ResultScreen(),

};
