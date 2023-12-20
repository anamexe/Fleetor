import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';
import 'package:flytor/widgets/app_bar/appbar_leading_image.dart';
import 'package:flytor/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:flytor/widgets/app_bar/custom_app_bar.dart';

class OnboardingSixteen1Screen extends StatelessWidget {
  const OnboardingSixteen1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 8.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 5.v),
                              child: Column(children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 24.h),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse10,
                                              height: 75.adaptSize,
                                              width: 75.adaptSize,
                                              radius:
                                                  BorderRadius.circular(37.h)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 24.h,
                                                  top: 14.v,
                                                  bottom: 14.v),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Rohit Powar",
                                                        style: CustomTextStyles
                                                            .titleMediumBlack90001),
                                                    SizedBox(height: 6.v),
                                                    Text("9768938321",
                                                        style: CustomTextStyles
                                                            .bodyMediumDMSansOnError)
                                                  ]))
                                        ]))),
                                SizedBox(height: 24.v),
                                _buildGeneral(context),
                                _buildEditProfile(context),
                                _buildNotifications(context),
                                _buildLegal(context),
                                _buildTermsOfUse(context),
                                _buildFaq(context),
                                _buildPrivacyPolicy(context),
                                _buildPersonal(context),
                                _buildReportABug(context),
                                _buildSettings(context),
                                _buildLogout(context)
                              ]))))
                ])),
            bottomNavigationBar: _buildBottomNavigation(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 54.v,
        leadingWidth: 36.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowdown,
            margin: EdgeInsets.only(left: 16.h, top: 17.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitleOne(
            text: "Profile", margin: EdgeInsets.only(left: 4.h)));
  }

  /// Section Widget
  Widget _buildGeneral(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 19.v),
        decoration: AppDecoration.outlineBlack900011,
        child: Text("General", style: theme.textTheme.bodyLarge));
  }

  /// Section Widget
  Widget _buildEditProfile(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 14.v),
        decoration: AppDecoration.outlineBlack900012,
        child: Text("Edit Profile",
            style: CustomTextStyles.titleMediumBlack90001_1));
  }

  /// Section Widget
  Widget _buildNotifications(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 14.v),
        decoration: AppDecoration.outlineBlack900012,
        child: Text("Notifications",
            style: CustomTextStyles.titleMediumBlack90001_1));
  }

  /// Section Widget
  Widget _buildLegal(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 22.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text("Legal", style: theme.textTheme.bodyLarge)
            ]));
  }

  /// Section Widget
  Widget _buildTermsOfUse(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 15.v),
        decoration: AppDecoration.outlineBlack900012,
        child: Text("Terms of Use",
            style: CustomTextStyles.titleMediumBlack90001_1));
  }

  /// Section Widget
  Widget _buildFaq(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 15.v),
        decoration: AppDecoration.outlineBlack900012,
        child: Text("FAQ", style: CustomTextStyles.titleMediumBlack90001_1));
  }

  /// Section Widget
  Widget _buildPrivacyPolicy(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 14.v),
        decoration: AppDecoration.outlineBlack900012,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text("Privacy Policy",
                  style: CustomTextStyles.titleMediumBlack90001)
            ]));
  }

  /// Section Widget
  Widget _buildPersonal(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 23.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Text("Personal", style: theme.textTheme.bodyLarge));
  }

  /// Section Widget
  Widget _buildReportABug(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 14.v),
        decoration: AppDecoration.outlineBlack900012,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text("Report a Bug",
                  style: CustomTextStyles.titleMediumBlack90001_1)
            ]));
  }

  /// Section Widget
  Widget _buildSettings(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 14.v),
        decoration: AppDecoration.outlineBlack900012,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text("Settings", style: CustomTextStyles.titleMediumBlack90001_1)
            ]));
  }

  /// Section Widget
  Widget _buildLogout(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 14.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text("Logout", style: CustomTextStyles.bodyLargePrimaryContainer)
            ]));
  }

  /// Section Widget
  Widget _buildBottomNavigation(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 41.h, right: 43.h, bottom: 35.v),
        decoration: AppDecoration.outlineGray,
        child: Container(
            decoration: AppDecoration.outlineGray,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Home", style: CustomTextStyles.labelLargeTeal400SemiBold),
              Spacer(flex: 34),
              Text("Bookings", style: CustomTextStyles.labelLargeGray500),
              Spacer(flex: 27),
              Text("Payment", style: CustomTextStyles.labelLargeGray500),
              Spacer(flex: 37),
              Text("More", style: CustomTextStyles.labelLargeGray500)
            ])));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
