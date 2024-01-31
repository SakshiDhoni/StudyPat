import 'package:flutter/material.dart';
import 'package:sakshi_s_application3/core/app_export.dart';
import 'package:sakshi_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:sakshi_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:sakshi_s_application3/widgets/custom_elevated_button.dart';
import 'package:sakshi_s_application3/widgets/custom_outlined_button.dart';

class SignUpSignInThreeScreen extends StatelessWidget {
  const SignUpSignInThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.v),
                child: Column(children: [
                  Text("Create your profile",
                      style: CustomTextStyles.headlineSmallBlack900),
                  SizedBox(height: 8.v),
                  Container(
                      width: 261.h,
                      margin: EdgeInsets.symmetric(horizontal: 32.h),
                      child: Text(
                          "Provide your profile picture and display your name to make easy delivery",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyMedium!
                              .copyWith(height: 1.69))),
                  SizedBox(height: 11.v),
                  Container(
                      height: 121.adaptSize,
                      width: 121.adaptSize,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.errorContainer,
                          borderRadius: BorderRadius.circular(60.h))),
                  SizedBox(height: 14.v),
                  CustomOutlinedButton(text: "Name"),
                  SizedBox(height: 14.v),
                  CustomElevatedButton(
                      text: "Continue",
                      onPressed: () {
                        onTapContinue(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconlyLightArrow,
            margin: EdgeInsets.fromLTRB(24.h, 12.v, 327.h, 12.v)));
  }

  onTapContinue(BuildContext context) {
    // TODO: implement Actions
  }
}
