import 'package:collage_management/Screens/assainment_screen/data/assainment_data.dart';
import 'package:collage_management/constants.dart';
import 'package:flutter/material.dart';

import 'widgets/assignment_widgets.dart';

class AssainmentScreen extends StatelessWidget {
  const AssainmentScreen({super.key});
  static String routeName = 'AssainmentScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( centerTitle: true,
        title: Text('Assignment'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: kOtherColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding),
                  topRight: Radius.circular(kDefaultPadding),
                ),
              ),
              child: ListView.builder(
                padding: EdgeInsets.all(kDefaultPadding),
                itemCount: assignment.length,
                itemBuilder: (context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: kDefaultPadding),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(kDefaultPadding),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kDefaultPadding),
                              color: kOtherColor,
                              boxShadow: [
                                BoxShadow(
                                  color: kOtherColor,
                                  blurRadius: 2.0,
                                ),
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 180,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: kSecondaryColor.withOpacity(0.4),
                                  borderRadius:
                                      BorderRadius.circular(kDefaultPadding),
                                ),
                                child: Center(
                                  child: Text(
                                    assignment[index].subjectName,
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w400,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                ),
                              ),
                              kHalfSizedBox,
                              Text(
                                assignment[index].topicName,
                                style: TextStyle(
                                  color: kTextBlackColor,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              kHalfSizedBox,
                              AssignmentDataRow(
                                title: 'Assign Date',
                                statusValue: assignment[index].assignData,
                              ),
                              kHalfSizedBox,
                              AssignmentDataRow(
                                title: 'Last Date',
                                statusValue: assignment[index].lastData,
                              ),
                              AssignmentDataRow(
                                title: 'Status',
                                statusValue: assignment[index].status,
                              ),
                              kHalfSizedBox,
                              //use condition here to display button
                              if (assignment[index].status == 'pending')
                                AssignmentButton(
                                  onPress: () {
                                    //submit here
                                  },
                                  title: 'To be Submitted',
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

