import 'package:flutter/material.dart';
import 'package:sakshi_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class EightyninetextItemWidget extends StatelessWidget {
  const EightyninetextItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "89%",
            style: CustomTextStyles.titleLargeDeeporange900,
          ),
          SizedBox(height: 2.v),
          Text(
            "Presence",
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }
}
