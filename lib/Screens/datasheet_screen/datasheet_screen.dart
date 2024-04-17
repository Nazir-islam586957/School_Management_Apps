import 'package:collage_management/Screens/datasheet_screen/data/datasheet_data.dart';
import 'package:collage_management/constants.dart';
import 'package:flutter/material.dart';

class DataSheetScreen extends StatelessWidget {
  const DataSheetScreen({super.key});
  static String routeName = 'DataSheetScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( centerTitle: true,
        title: Text('DataSheet'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kOtherColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kDefaultPadding),
            topRight: Radius.circular(kDefaultPadding),
          ),
        ),
        child: ListView.builder(
            itemCount: dateSheet.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                  left: kDefaultPadding / 2,
                  right: kDefaultPadding / 2,
                ),
                padding: EdgeInsets.all(kDefaultPadding / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: kDefaultPadding,
                      child: Divider(
                        thickness: 1.0,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //1st column
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              dateSheet[index].date.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                    color: kTextBlackColor,
                                    fontWeight: FontWeight.w900,
                                  ),
                            ),
                            Text(dateSheet[index].monthName,
                                style: Theme.of(context).textTheme.caption),
                          ],
                        ),

                        //2nd one
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              dateSheet[index].subjectName,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                    color: kTextBlackColor,
                                    fontWeight: FontWeight.w900,
                                  ),
                            ),
                            Text(dateSheet[index].dayName,
                                style: Theme.of(context).textTheme.caption),
                          ],
                        ),
                        //3rd one
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '🕒${dateSheet[index].time}',
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: kDefaultPadding,
                      child: Divider(
                        thickness: 1.0,
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
