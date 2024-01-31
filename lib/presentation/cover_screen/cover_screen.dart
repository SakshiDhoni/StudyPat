import 'package:flutter/material.dart';
import 'package:sakshi_s_application3/core/app_export.dart';
import 'package:sakshi_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:sakshi_s_application3/widgets/app_bar/appbar_title_iconbutton.dart';
import 'package:sakshi_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:sakshi_s_application3/widgets/custom_elevated_button.dart';

class CoverScreen extends StatelessWidget {
  const CoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgCoverScreen),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 45.v),
                        decoration: AppDecoration.gradientCyanToIndigo,
                        child: Column(children: [
                          SizedBox(height: 6.v),
                          _buildAppBarRow(context),
                          Spacer(),
                          SizedBox(
                              width: 242.h,
                              child: Text("Hello and \nwelcome here!",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.headlineLargePrimary
                                      .copyWith(height: 1.31))),
                          SizedBox(height: 18.v),
                          Opacity(
                              opacity: 0.6,
                              child: Container(
                                  width: 299.h,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 37.h),
                                  child: Text(
                                      "Get an overview of how you are performing and motivate yourself to achieve even more.",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.bodyMediumPrimary
                                          .copyWith(height: 1.69)))),
                          SizedBox(height: 47.v),
                          CustomElevatedButton(
                              width: 149.h,
                              text: "Let’s Start",
                              onPressed: () {
                                onTapLetsStart(context);
                              })
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBarRow(BuildContext context) {
    return CustomAppBar(
        height: 30.v,
        centerTitle: true,
        title: Row(children: [
          AppbarTitleIconbutton(
              imagePath: ImageConstant.imgUser,
              margin: EdgeInsets.only(bottom: 5.v)),
          AppbarTitle(text: "ScholarSphere", margin: EdgeInsets.only(left: 5.h))
        ]));
  }

  /// Navigates to the signUpSignIn11Screen when the action is triggered.
  onTapLetsStart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpSignIn11Screen);
  }
}
