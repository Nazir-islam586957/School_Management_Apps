import 'package:collage_management/Screens/result_screen/components/result_component.dart';
import 'package:collage_management/Screens/result_screen/data/result_data.dart';
import 'package:collage_management/constants.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});
  static String routeName = 'ResultScreen';
  @override
  Widget build(BuildContext context) {
    int oMarks = result.map((e) => e.obtainedMarks).sum.toInt();
    int tMarks = result.map((e) => e.totalMarks).sum.toInt();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Result',
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 20.0,
            margin: EdgeInsets.all(3.0),
            child: CustomPaint(
              foregroundPainter: CircularPainter(
                backgroundColor: kPrimaryColor,
                lineColor: kOtherColor,
                width: 5.0,
              ),
              child: Center(
                child: Text(oMarks.toString() + '\n / \n' + tMarks.toString(),
                style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Text('You are excellent',
              style: Theme.of(context).textTheme.subtitle2!),
          Text(
            'Nazirul!!',
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontWeight: FontWeight.w900,
                ),
          ),
          sizedBox,
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding * 2),
                  topRight: Radius.circular(kDefaultPadding * 2),
                ),
                color: kOtherColor,
              ),
              child: ListView.builder(
                  padding: EdgeInsets.all(kDefaultPadding),
                  itemCount: result.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: kDefaultPadding),
                      padding: EdgeInsets.all(kDefaultPadding / 2),
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(kDefaultPadding),
                          boxShadow: [
                            BoxShadow(
                              color: kTextLightColor,
                              blurRadius: 2.0,
                            )
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(result[index].subjectName,
                                  textAlign: TextAlign.start,
                                  style:
                                      Theme.of(context).textTheme.subtitle2!),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${result[index].obtainedMarks} / ${result[index].totalMarks}',
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        width:
                                            result[index].totalMarks.toDouble(),
                                        height: 9.0,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[700],
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                                kDefaultPadding),
                                            bottomRight: Radius.circular(
                                                kDefaultPadding),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 9.0,
                                        width: result[index]
                                            .obtainedMarks
                                            .toDouble(),
                                        decoration: BoxDecoration(
                                          color: result[index].grade == 'A-'
                                              ? kErrorBorderColor
                                              : kOtherColor,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                                kDefaultPadding),
                                            bottomRight: Radius.circular(
                                                kDefaultPadding),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    result[index].grade,
                                    textAlign: TextAlign.start,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                          fontWeight: FontWeight.w900,
                                        ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
