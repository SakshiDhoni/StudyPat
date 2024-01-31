import 'package:flutter/material.dart';
import 'package:sakshi_s_application3/core/app_export.dart';
import 'package:sakshi_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:sakshi_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:sakshi_s_application3/widgets/custom_elevated_button.dart';
import 'package:sakshi_s_application3/widgets/custom_pin_code_text_field.dart';

class SignUpSignIn21Screen extends StatelessWidget {
  const SignUpSignIn21Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blue40001,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 9.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("Verification Code",
                              style: theme.textTheme.headlineSmall))),
                  SizedBox(height: 14.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 274.h,
                          margin: EdgeInsets.only(left: 6.h, right: 50.h),
                          child: Text(
                              "Enter the code send by SMS to verify your phone number",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMediumPrimary_1
                                  .copyWith(height: 1.69)))),
                  SizedBox(height: 27.v),
                  Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: CustomPinCodeTextField(
                          context: context, onChanged: (value) {})),
                  SizedBox(height: 32.v),
                  CustomElevatedButton(
                      text: "Verify",
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle: CustomTextStyles.titleMediumBlue400,
                      onPressed: () {
                        onTapVerify(context);
                      }),
                  SizedBox(height: 12.v),
                  Text("Resend Code",
                      style: CustomTextStyles.labelLargePrimary),
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

  onTapVerify(BuildContext context) {
    // TODO: implement Actions
  }
}
