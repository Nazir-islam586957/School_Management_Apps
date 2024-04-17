import 'package:collage_management/Screens/fee_screen/fee_screen.dart';
import 'package:collage_management/Screens/home_screen/Drawer/Drawer.dart';
import 'package:collage_management/Screens/home_screen/widgets/About_us/about_us_data.dart';
import 'package:collage_management/Staffs_info/Staffs_info_data.dart';
import 'package:collage_management/constants.dart';
import 'package:collage_management/teacher_nfo/teacher_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home_screen.dart';

class Home2 extends StatelessWidget {
  static String routeName = 'Home2';
  Home2({super.key});
  GlobalKey<ScaffoldState> _Scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      key: _Scaffoldkey,
      drawer: Drawer(
        backgroundColor: Colors.teal.shade900,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/banner_5.jpg")),
                  ),
                ),
                Text(
                  'Bangladesh Technical Education Board',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.open_in_new,
                color: Colors.white38,
              ),
              title: const Text(
                ' BTEB Govt WebSite ',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                const link = "https://bteb.gov.bd/";

                launchUrl(Uri.parse(link), mode: LaunchMode.inAppWebView);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.open_in_new,
                color: Colors.white38,
              ),
              title: const Text(
                ' FCI WebSite',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                const link = "https://www.fci.gov.bd/";

                launchUrl(Uri.parse(link), mode: LaunchMode.inAppWebView);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.contact_mail_rounded,
                color: Colors.white54,
              ),
              title: const Text(
                'Contact',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                const link = " ";

                launchUrl(Uri.parse(link), mode: LaunchMode.inAppWebView);
              },
            ),

            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white54,
              ),
              title: const Text(
                'About Us',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                // const link = " ";
                // launchUrl(Uri.parse(link), mode: LaunchMode.inAppWebView);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => About_US_Data()));
              },
            ),
            SizedBox(height: 280,),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white54,
              ),
              title: const Text(
                'Settings',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                const link = " ";
                launchUrl(Uri.parse(link), mode: LaunchMode.inAppWebView);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  height: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                    image: DecorationImage(
                        image: AssetImage("""assets/images/fci.jpg""")),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: IconButton(
                            onPressed: () {
                              _Scaffoldkey.currentState?.openDrawer();
                            },
                            icon: Icon(
                              Icons.menu,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Welcome To FCI",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Image(
                              image: AssetImage(
                                "assets/images/fci_logo.jpg",
                              ),
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.height,
                height: 470,

                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/itbacground5.jpg")),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.teal.shade600,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TeacherScreen()));
                        },
                        child: Text(
                          "Teacher Information ",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    sizedBox,
                    Container(
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Staffs_Data()));
                          },
                          child: Text(
                            "Staffs Information ",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    ),
                    sizedBox,
                    Container(
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          },
                          child: Text(
                            "Student Information ",
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
    );
  }
}
