import 'package:flutter/material.dart';
import 'package:sakshi_s_application3/core/app_export.dart';
import 'package:sakshi_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:sakshi_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:sakshi_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:sakshi_s_application3/widgets/custom_checkbox_button.dart';
import 'package:sakshi_s_application3/widgets/custom_elevated_button.dart';
import 'package:sakshi_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpSignIn11Screen extends StatelessWidget {
  SignUpSignIn11Screen({Key? key}) : super(key: key);

  TextEditingController phoneNumberController = TextEditingController();

  bool checkBox = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding:
                    EdgeInsets.symmetric(horizontal: 24.h, vertical: 121.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 34.v),
                      Text("Phone Number",
                          style: CustomTextStyles.bodyMediumGray900),
                      SizedBox(height: 8.v),
                      CustomTextFormField(
                          controller: phoneNumberController,
                          hintText: "+91 - xxxxx xxxxx",
                          textInputAction: TextInputAction.done),
                      Spacer(),
                      _buildCheckBox(context)
                    ])),
            bottomNavigationBar: _buildSignUpButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 24.h, top: 12.v, bottom: 12.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "Sign up/Sign in"));
  }

  /// Section Widget
  Widget _buildCheckBox(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 9.h),
        child: CustomCheckboxButton(
            text:
                "I agree with the terms and conditions and also the protection of my personal data on this application",
            isExpandedText: true,
            value: checkBox,
            onChange: (value) {
              checkBox = value;
            }));
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Sign Up",
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 50.v),
        buttonStyle: CustomButtonStyles.fillCyanTL10);
  }

  /// Navigates to the coverScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.coverScreen);
  }
}
