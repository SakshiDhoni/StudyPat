import '../home_screen_page/widgets/eightyninetext_item_widget.dart';
import '../home_screen_page/widgets/text_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sakshi_s_application3/core/app_export.dart';
import 'package:sakshi_s_application3/widgets/custom_elevated_button.dart';
import 'package:sakshi_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HomeScreenPage extends StatelessWidget {
  HomeScreenPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController geographyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              _buildHeader(context),
              SizedBox(height: 30.v),
              _buildText(context),
              SizedBox(height: 33.v),
              _buildSchedule(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text(
              "Hi, Student",
              style: CustomTextStyles.titleLargeGray900,
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text(
              "Here is your activity today, ",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 31.v),
          Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 86.v,
                crossAxisCount: 2,
                mainAxisSpacing: 15.h,
                crossAxisSpacing: 15.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return EightyninetextItemWidget();
              },
            ),
          ),
          SizedBox(height: 12.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildText(BuildContext context) {
    return SizedBox(
      height: 104.v,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 36.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return TextItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyTwo(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Time-Table",
            style: CustomTextStyles.titleMediumOnPrimary,
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Row(
              children: [
                Text(
                  "7",
                  style: theme.textTheme.labelLarge,
                ),
                Spacer(
                  flex: 20,
                ),
                Text(
                  "8",
                  style: theme.textTheme.labelLarge,
                ),
                Spacer(
                  flex: 20,
                ),
                Text(
                  "9",
                  style: theme.textTheme.labelLarge,
                ),
                Spacer(
                  flex: 19,
                ),
                Text(
                  "10",
                  style: theme.textTheme.labelLarge,
                ),
                Spacer(
                  flex: 19,
                ),
                Text(
                  "11",
                  style: theme.textTheme.labelLarge,
                ),
                Spacer(
                  flex: 18,
                ),
                Text(
                  "12",
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          SizedBox(height: 25.v),
          Container(
            width: 126.h,
            margin: EdgeInsets.only(left: 17.h),
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.fillOrange,
            child: Text(
              "Economy",
              style: CustomTextStyles.labelLargeAmber700,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 68.h),
            child: CustomTextFormField(
              width: 126.h,
              controller: geographyController,
              hintText: "Geography",
              textInputAction: TextInputAction.done,
              alignment: Alignment.centerRight,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 7.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.fillSecondaryContainer,
              fillColor: theme.colorScheme.secondaryContainer,
            ),
          ),
          CustomElevatedButton(
            height: 35.v,
            width: 63.h,
            text: "English",
            margin: EdgeInsets.only(right: 5.h),
            buttonStyle: CustomButtonStyles.fillIndigo,
            buttonTextStyle: CustomTextStyles.labelLargeIndigo400,
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSchedule(BuildContext context) {
    return SizedBox(
      height: 211.v,
      width: 337.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Opacity(
            opacity: 0.3,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: SizedBox(
                  height: 138.v,
                  child: VerticalDivider(
                    width: 1.h,
                    thickness: 1.v,
                  ),
                ),
              ),
            ),
          ),
          Opacity(
            opacity: 0.3,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 80.h),
                child: SizedBox(
                  height: 138.v,
                  child: VerticalDivider(
                    width: 1.h,
                    thickness: 1.v,
                  ),
                ),
              ),
            ),
          ),
          Opacity(
            opacity: 0.3,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 143.h),
                child: SizedBox(
                  height: 138.v,
                  child: VerticalDivider(
                    width: 1.h,
                    thickness: 1.v,
                  ),
                ),
              ),
            ),
          ),
          Opacity(
            opacity: 0.3,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(right: 130.h),
                child: SizedBox(
                  height: 138.v,
                  child: VerticalDivider(
                    width: 1.h,
                    thickness: 1.v,
                  ),
                ),
              ),
            ),
          ),
          Opacity(
            opacity: 0.3,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(right: 67.h),
                child: SizedBox(
                  height: 138.v,
                  child: VerticalDivider(
                    width: 1.h,
                    thickness: 1.v,
                  ),
                ),
              ),
            ),
          ),
          Opacity(
            opacity: 0.3,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(right: 4.h),
                child: SizedBox(
                  height: 138.v,
                  child: VerticalDivider(
                    width: 1.h,
                    thickness: 1.v,
                  ),
                ),
              ),
            ),
          ),
          _buildTwentyTwo(context),
        ],
      ),
    );
  }
}
