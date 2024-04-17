import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class RS_Teacher_Data extends StatelessWidget {
  const RS_Teacher_Data({super.key});

  @override
  Widget build(BuildContext context) {  final TextEditingController _numberCtrl = TextEditingController();
  return Scaffold(
    appBar: AppBar(
      title: Text('R.S Teacher'),
    ),
    body: ListView(
      children: [
        Card(
          child: Column(
            children: [
              Image.asset(
                "assets/teachers/debabrata kumar_nath.jpg",
                height: 250,
              ),
              Text(
                ' Name: Debabrata Kumar Nath\n'
                    ' Head of the Department(R.S)\n Department: R.S\n Designation: Chief Instructor\n Phone: +8801553375004\n',

                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              GestureDetector(
                onTap: ()async{
                  const number = '+8801553375004'; //set the number here
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
                "assets/teachers/dulalSir.jpg",
                height: 250,
              ),
              Text(
                ' Name: Dulal Husain\n'
                    ' Department: R.S\n Designation: Instructor\n Phone: +8801724363463\n',

                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              GestureDetector(
                onTap: ()async{
                  const number = '+8801724363463'; //set the number here
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
                "assets/teachers/Mojidur Rahman.jpg",
                height: 250,
              ),
              Text(
                ' Name: Md. Mojidur Rahman\n'
                    ' Department: R.S\n Designation: Instructor\n Phone: +8801843492677\n',

                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              GestureDetector(
                onTap: ()async{
                  const number = '+8801843492677'; //set the number here
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
                "assets/teachers/rajibkumar.jpg",
                height: 250,
              ),
              Text(
                ' Name: Rajib Kumar Ghosh\n'
                    ' Department: R.S\n Designation: Instructor\n Phone: +8801767911281\n',

                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              GestureDetector(
                onTap: ()async{
                  const number = '+8801767911281'; //set the number here
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
                "assets/teachers/Sanuwar.jpg",
                height: 250,
              ),
              Text(
                ' Name: Sanuwar Hossain\n'
                    ' Department: R.S\n Designation: Junior Instructor\n Phone: +8801737463844\n',

                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              GestureDetector(
                onTap: ()async{
                  const number = '+8801737463844'; //set the number here
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
