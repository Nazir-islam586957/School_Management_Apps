import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class CST_Teacher_Data extends StatelessWidget {
  const CST_Teacher_Data({super.key});

  @override
  Widget build(BuildContext context) {  final TextEditingController _numberCtrl = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('CST Teacher'),
      ),
      body: ListView(
        children: [
          Card(
            child: Column(
              children: [
                Image.asset(
                  "assets/teachers/mamonSir.jpg",
                  height: 250,
                ),
                Text(
                  ' Name: Abdullah Al Mamon\n'
                      ' Head of the Department(CST)\n Department: CST\n Designation: Instructor(CST)\n Phone: +8801818591793\n',

                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: ()async{
                    const number = '+8801818591793'; //set the number here
                    bool? res = await FlutterPhoneDirectCaller.callNumber(number);},
                  child: Container(height: 45,
                    child: Image.asset("assets/teachers/call_now.png"),
                  ),
                ),SizedBox(height: 20,),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 5,
            color: Colors.white,
            margin: EdgeInsets.all(30),

          ),
          // Card(
          //   child: Column(
          //     children: [
          //       Image.asset(
          //         "assets/teachers/afrojaMam.jpj.jpeg",
          //         height: 250,
          //       ),
          //       Text(
          //         ' Name: Afroja Jainab\n'
          //             ' Head of the Department(CST)\n Department: CST\n Designation: Instructor(CST)\n Phone: +8801711132353\n',
          //
          //         style: TextStyle(
          //           fontSize: 20,
          //           color: Colors.black,
          //           fontWeight: FontWeight.w400,
          //         ),
          //       ),
          //       GestureDetector(
          //         onTap: ()async{
          //           const number = '+8801711132353'; //set the number here
          //           bool? res = await FlutterPhoneDirectCaller.callNumber(number);},
          //         child: Container(height: 45,
          //           child: Image.asset("assets/teachers/call_now.png"),
          //         ),
          //       ),SizedBox(height: 20,),
          //     ],
          //   ),
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(20.0),
          //   ),
          //   elevation: 5,
          //   color: Colors.white,
          //   margin: EdgeInsets.all(30),
          //
          // ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  "assets/teachers/samimSir.jpg",
                  height: 250,
                ),
                Text(
                  ' Name: Abdus Soban Shamim\n'
                      ' Department: CST\n Designation: Instructor\n Phone: +8801813243436\n',

                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: ()async{
                    const number = '+8801813243436'; //set the number here
                    bool? res = await FlutterPhoneDirectCaller.callNumber(number);},
                  child: Container(height: 45,
                    child: Image.asset("assets/teachers/call_now.png"),
                  ),
                ),SizedBox(height: 20,),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 5,
            color: Colors.white,
            margin: EdgeInsets.all(30),

          ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  "assets/teachers/nokibSir.jpg",
                  height: 250,
                ),
                Text(
                  ' Name: Md. Nakibul Hassan\n'
                      ' Department: CST\n Designation: Instructor\n Phone: +8801710020761\n',

                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: ()async{
                    const number = '+8801711132353'; //set the number here
                    bool? res = await FlutterPhoneDirectCaller.callNumber(number);},
                  child: Container(height: 45,
                    child: Image.asset("assets/teachers/call_now.png"),
                  ),
                ),SizedBox(height: 20,),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 5,
            color: Colors.white,
            margin: EdgeInsets.all(30),

          ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  "assets/teachers/sohelrana.jpg",
                  height: 250,
                ),
                Text(
                  ' Name: Md. Sohel Rana\n'
                      ' Department: CST\n Designation: Junior Instructor\n Phone: +8801625225586\n',

                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: ()async{
                    const number = '+8801625225586'; //set the number here
                    bool? res = await FlutterPhoneDirectCaller.callNumber(number);},
                  child: Container(height: 45,
                    child: Image.asset("assets/teachers/call_now.png"),
                  ),
                ),SizedBox(height: 20,),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 5,
            color: Colors.white,
            margin: EdgeInsets.all(30),

          ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  "assets/teachers/manIcon.jpg",
                  height: 250,
                ),
                Text(
                  ' Name: M.A Moly\n'
                      ' Department: CST\n Designation: Junior Instructor\n Phone: +8801776290973\n',

                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: ()async{
                    const number = '+8801776290973'; //set the number here
                    bool? res = await FlutterPhoneDirectCaller.callNumber(number);},
                  child: Container(height: 45,
                    child: Image.asset("assets/teachers/call_now.png"),
                  ),
                ),SizedBox(height: 20,),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 5,
            color: Colors.white,
            margin: EdgeInsets.all(30),

          ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  "assets/teachers/manIcon.jpg",
                  height: 250,
                ),
                Text(
                  ' Name: Md. Muzahidul Islam\n'
                      ' Department: CST\n Designation: Junior Instructor\n Phone: +88017629927719\n',

                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: ()async{
                    const number = '+88017629927719'; //set the number here
                    bool? res = await FlutterPhoneDirectCaller.callNumber(number);},
                  child: Container(height: 45,
                    child: Image.asset("assets/teachers/call_now.png"),
                  ),
                ),SizedBox(height: 20,),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 5,
            color: Colors.white,
            margin: EdgeInsets.all(30),

          ),
        ],
      ),
    );
  }
}
