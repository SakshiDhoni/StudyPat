import 'package:flutter/material.dart';
import 'package:sakshi_s_application3/core/app_export.dart';
import 'package:sakshi_s_application3/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TextItemWidget extends StatelessWidget {
  const TextItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48.h,
      child: Column(
        children: [
          CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(14.h),
            decoration: IconButtonStyleHelper.fillBlueGray,
            child: CustomImageView(
              imagePath: ImageConstant.imgFiSrBookAlt,
            ),
          ),
          SizedBox(height: 12.v),
          SizedBox(
            width: 37.h,
            child: Text(
              "Exam\nMode",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.labelLarge!.copyWith(
                height: 1.69,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
