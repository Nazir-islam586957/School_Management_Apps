import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Staffs_Data extends StatelessWidget {
  const Staffs_Data({super.key});

  @override
  Widget build(BuildContext context) {  final TextEditingController _numberCtrl = TextEditingController();
  return Scaffold(
    appBar: AppBar(
      title: Text('Staffs Information'),
    ),
    body: ListView(
      children: [
        Card(
          child: Column(
            children: [
              Image.asset(
                "assets/teachers/manIcon.jpg",
                height: 250,
              ),
              Text(
                ' Name: Arefin\n'
                    ' Department: TCT\n Designation: Instructor\n Phone: +8801833455252\n',

                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              GestureDetector(
                onTap: ()async{
                  const number = '+8801833455252'; //set the number here
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
                ' Name: AKTER\n'
                    ' Department: TCT\n Designation: Junior Instructor\n Phone: +8801813243436\n',

                style: TextStyle(
                  fontSize: 18,
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
                "assets/teachers/manIcon.jpg",
                height: 250,
              ),
              Text(
                ' Name: TASNUBA \n'
                    ' Department: TCT\n Designation: Junior Instructor\n Phone: +8801838599437\n',

                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              GestureDetector(
                onTap: ()async{
                  const number = '+8801838599437'; //set the number here
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
                ' Name: MOBARRAH \n'
                    ' Department: TCT\n Designation: Junior Instructor\n Phone: +8801813243436\n',

                style: TextStyle(
                  fontSize: 18,
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
                "assets/teachers/manIcon.jpg",
                height: 250,
              ),
              Text(
                ' Name: TASNUBA \n'
                    ' Department: TCT\n Designation: Junior Instructor\n Phone: +8801838599437\n',

                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              GestureDetector(
                onTap: ()async{
                  const number = '+8801838599437'; //set the number here
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
