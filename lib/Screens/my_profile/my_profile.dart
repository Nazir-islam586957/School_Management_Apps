import 'package:collage_management/constants.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);
  static String routeName = 'MyProfileScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
        ),
        actions: [
          InkWell(
            onTap: () {
              //send report to collage management
            },
            child: Container(
              padding: EdgeInsets.only(right: kDefaultPadding / 2),
              child: Row(children: [
                Icon(Icons.report_gmailerrorred_outlined),
              kHalfWidthSizedBox,
                Text(
                  'Report',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ]),
            ),
          )
        ],
      ),
      body: Container(
        color: kOtherColor,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(kDefaultPadding * 2),
                  bottomLeft: Radius.circular(kDefaultPadding * 2),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 50.0,
                    minRadius: 50.0,
                    //  backgroundColor:kSecondaryColor,
                    backgroundImage: AssetImage(
                      'assets/images/nazir.png',
                    ),
                  ),
                  kWidthSizedBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Nazirul',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text(
                        'Semester: 7th | Roll no: 586957',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              fontSize: 14.0,
                            ),
                      )
                    ],
                  )
                ],
              ),
            ),
            sizedBox,
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetailRow(
                    title: 'Registration Number', value: '2020-ASDF-2021'),
                ProfileDetailRow(title: 'Academic Year', value: '2020-2024'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetailRow(
                    title: 'Admission Class', value: 'Computer Science'),
                ProfileDetailRow(title: 'Admission Number', value: '0002585'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetailRow(
                    title: 'Date of Admission', value: '1 Aug, 2020'),
                ProfileDetailRow(title: 'Date of Birth', value: '01 Oct 2003'),
              ],
            ),
            ProfileDetaisColumn(title:'Email',value: 'nazirislam158825@gmail.com',),
            ProfileDetaisColumn(title:'Father Name' ,value: 'Md Alfo Mia',),
            ProfileDetaisColumn(title:'Mother Name',value: 'Soria Begum',),
            ProfileDetaisColumn(title:'Phone Number',value: '01645116798',),
          ],
        ),
      ),
    );
  }
}

class ProfileDetailRow extends StatelessWidget {
  const ProfileDetailRow({Key? key, required this.title, required this.value})
      : super(key: key);
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: kDefaultPadding / 4,
        left: kDefaultPadding / 4,
      ),
      width: MediaQuery.of(context).size.width / 2,
      //color: kPrimaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: kTextLightColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0,
                    ),
              ),
              kHalfSizedBox,
              Text(
                value,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: kTextBlackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0,
                    ),
              ),
              kHalfSizedBox,
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: Divider(
                  thickness: 1.0,
                ),
              )
            ],
          ),
          Icon(
            Icons.lock_outline,
            size: 20.0,
          )
        ],
      ),
    );
  }
}

class ProfileDetaisColumn extends StatelessWidget {
  const ProfileDetaisColumn(
      {Key? key, required this.title, required this.value})
      : super(key: key);
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: kTextLightColor,
                      fontSize: 15.0,
                    ),
              ),
              kHalfSizedBox,
              Text(
                value,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: kTextBlackColor,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              kHalfSizedBox,
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Divider(
                  thickness: 1.0,
                ),
              ),
            ],
          ),
          Icon(Icons.lock_outline, size: 20.0),
        ],
      ),
    );
  }
}
