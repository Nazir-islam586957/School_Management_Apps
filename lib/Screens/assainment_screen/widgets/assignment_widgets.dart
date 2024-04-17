import 'package:collage_management/constants.dart';
import 'package:flutter/material.dart';

class AssignmentDataRow extends StatelessWidget {
  const AssignmentDataRow(
      {super.key, required this.title, required this.statusValue});
  final String title;
  final String statusValue;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: kTextLightColor,
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          statusValue,
          style: TextStyle(
            color: kTextBlackColor,
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}

class AssignmentButton extends StatelessWidget {
  const AssignmentButton(
      {super.key, required this.title, required this.onPress});
  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        height: 40.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kSecondaryColor, kPrimaryColor],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.5, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                ),
          ),
        ),
      ),
    );
  }
}
