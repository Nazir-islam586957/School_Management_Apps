import 'package:collage_management/Screens/assainment_screen/assaignment_screen.dart';
import 'package:collage_management/Screens/datasheet_screen/datasheet_screen.dart';
import 'package:collage_management/Screens/fee_screen/fee_screen.dart';
import 'package:collage_management/Screens/home_screen/widgets/student_data.dart';
import 'package:collage_management/Screens/my_profile/my_profile.dart';
import 'package:collage_management/Screens/result_screen/result_screen.dart';
//import 'package:collage_management/Screens/home_screen/widgets/widgets.dart';
import 'package:collage_management/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'HomeScreen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 1.4,
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StudentName2(
                          studentName: 'Nazirul',
                        ),
                        kHalfSizedBox,
                        StudentClass(
                            studentclass: 'Semester: 7th | Roll no: 586957'),
                        kHalfSizedBox,
                        StudentYear(studentYear: '2020-2021'),
                      ],
                    ),
                    kHalfSizedBox,
                    StudentPicture(
                        picAddress: 'assets/images/nazir.png',
                        onPress: () {
                          //goto profile details here
                          Navigator.pushNamed(
                              context, MyProfileScreen.routeName);
                        }),
                  ],
                ),
                sizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StudentDataCard(
                      onPress: () {
                        //goto attendence screen
                      },
                      title: 'Attendance',
                      value: '90.05%',
                    ),
                    StudentDataCard(
                      onPress: () {
                        //goto due screen
                        Navigator.pushNamed(context, FeeScreen.routeName);
                      },
                      title: 'Fees Due',
                      value: '600৳',
                    ),
                  ],
                )
              ],
            ),
          ),

          //other will use all the remaining hight of screen
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: kOtherColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(kDefaultPadding * 3),
                      topRight: Radius.circular(kDefaultPadding * 3),
                    )),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCARD(
                          onPress: () {},
                          icon: 'assete/icons/quiz.svg',
                          title: 'Take Quiz',
                        ),
                        HomeCARD(
                          onPress: () {
                            //goto assainment screen here
                            Navigator.pushNamed(
                                context, AssainmentScreen.routeName);
                          },
                          icon: 'assete/icons/assignment.svg',
                          title: 'Assignments',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCARD(
                          onPress: () {},
                          icon: 'assete/icons/holiday.svg',
                          title: 'Holidays',
                        ),
                        HomeCARD(
                          onPress: () {},
                          icon: 'assete/icons/timetable.svg',
                          title: 'Time Table',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCARD(
                          onPress: () {
                            Navigator.pushNamed(
                                context, ResultScreen.routeName);
                          },
                          icon: 'assete/icons/result.svg',
                          title: 'Result',
                        ),
                        HomeCARD(
                          onPress: () {
                            Navigator.pushNamed(
                                context, DataSheetScreen.routeName);
                          },
                          icon: 'assete/icons/datasheet.svg',
                          title: 'DataSheet',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCARD(
                          onPress: () {},
                          icon: 'assete/icons/ask.svg',
                          title: 'Ask',
                        ),
                        HomeCARD(
                          onPress: () {},
                          icon: 'assete/icons/gallary.svg',
                          title: 'Gallary',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCARD(
                          onPress: () {},
                          icon: 'assete/icons/resume.svg',
                          title: 'Leve\nApplication',
                        ),
                        HomeCARD(
                          onPress: () {},
                          icon: 'assete/icons/lock.svg',
                          title: 'Change\nPassowrd',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCARD(
                          onPress: () {},
                          icon: 'assete/icons/event.svg',
                          title: 'Eents',
                        ),
                        HomeCARD(
                          onPress: () {},
                          icon: 'assete/icons/lagout.svg',
                          title: 'Layout',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeCARD extends StatelessWidget {
  const HomeCARD(
      {super.key,
      required this.onPress,
      required this.icon,
      required this.title});
  final VoidCallback onPress;
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding / 2),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              height: 40.0,
              width: 40.0,
              color: kOtherColor,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(
              height: kDefaultPadding / 3,
            ),
          ],
        ),
      ),
    );
  }
}
