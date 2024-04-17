import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Principal_Data extends StatelessWidget {
  const Principal_Data({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PRINCIPAL INFO'),
      ),
      body: ListView(
        children: [
          Card(
            child: Column(
              children: [
                Image.asset(
                  "assets/teachers/pricipal.jpg",
                  height: 300,

                ),
                Text(
                  ' Name: Muhammad Mazharul\n              Islam Chowdhury\n'
                      ' Principal, Feni Computer Institute.\n Mobile: +880..........\n Email:......\n',

                  style: TextStyle(
                    fontSize: 18,
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

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20), //apply padding horizontal or vertical only
            child:

Text('Feni Computer Institute is recognized as a state leader in ICT teaching and learning, student ''relationships and well being. We create a safe social and physical environment that helps all our'
    ' students learn and succeed. The size of the Institute and the emphasis on developing and maintaining'' positive relationships means that we know each student as an individual. With around 1200 students,'
    ' we can provide more personal support and greater access to opportunities in each student’s chosen '
    'fields of interest.', style: TextStyle(
  fontSize: 19,
  color: Colors.white,
  fontWeight: FontWeight.w400,
),),),
        ],
      ),
    );
  }
}
