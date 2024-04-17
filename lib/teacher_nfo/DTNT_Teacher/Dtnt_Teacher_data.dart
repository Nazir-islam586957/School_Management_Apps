import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class DTNT_Teacher_Data extends StatelessWidget {
  const DTNT_Teacher_Data({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _numberCtrl = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('DTNT Teacher'),
      ),
      body: ListView(
        children: [
          Card(
            child: Column(
              children: [
                Image.asset(
                  "assets/teachers/afrojaMam.jpj.jpeg",
                  height: 250,
                ),
                Text(
                  ' Name: Afroja Jainab\n'
                  ' Head of the Department(DTNT)\n Department: DTNT\n Designation: Instructor(DTNT)\n Phone: +8801711132353\n',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    const number = '+8801711132353'; //set the number here
                    bool? res =
                        await FlutterPhoneDirectCaller.callNumber(number);
                  },
                  child: Container(
                    height: 45,
                    child: Image.asset("assets/teachers/call_now.png"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
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
                  "assets/teachers/helalUddin.jpg",
                  height: 250,
                ),
                Text(
                  ' Name: Helal Uddin\n'
                  ' Department: DTNT\n Designation: Instructor\n Phone: +8801815645223\n',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    const number = '+8801815645223'; //set the number here
                    bool? res =
                        await FlutterPhoneDirectCaller.callNumber(number);
                  },
                  child: Container(
                    height: 45,
                    child: Image.asset("assets/teachers/call_now.png"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
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
                  ' Name: Engr. Md. Israk Hosain\n'
                      ' Department: DTNT\n Designation: Instructor\n Phone: +8801814722970\n',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    const number = '+8801814722970'; //set the number here
                    bool? res =
                        await FlutterPhoneDirectCaller.callNumber(number);
                  },
                  child: Container(
                    height: 45,
                    child: Image.asset("assets/teachers/call_now.png"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
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
                  ' Name: Nazmun Nahar\n'
                  ' Department: DTNT\n Designation: Junior Instructor\n Phone: +8801710020761\n',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    const number = '+8801710020761'; //set the number here
                    bool? res =
                        await FlutterPhoneDirectCaller.callNumber(number);
                  },
                  child: Container(
                    height: 45,
                    child: Image.asset("assets/teachers/call_now.png"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
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
                  ' Name: NAHIDA SULTANA BITHI\n'
                  ' Department: DTNT\n Designation: Junior Instructor\n Phone: +8801615645224\n',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    const number = '+8801615645224'; //set the number here
                    bool? res =
                        await FlutterPhoneDirectCaller.callNumber(number);
                  },
                  child: Container(
                    height: 45,
                    child: Image.asset("assets/teachers/call_now.png"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
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
