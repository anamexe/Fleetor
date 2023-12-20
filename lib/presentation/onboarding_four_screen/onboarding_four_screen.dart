import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';
import 'package:flytor/widgets/custom_elevated_button.dart';

class OnboardingFourScreen extends StatelessWidget {
  const OnboardingFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 24.v),
          child: Column(
            children: [
              SizedBox(height: 2.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      right: 20.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Hello Pilot",
                            style: CustomTextStyles.titleMediumBlack90001Bold18,
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Please Register yourself as a Flytor",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        SizedBox(height: 2.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            height: 199.v,
                            width: 161.h,
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 33.adaptSize,
                                    width: 33.adaptSize,
                                    margin: EdgeInsets.only(
                                      top: 64.v,
                                      right: 17.h,
                                    ),
                                    decoration: BoxDecoration(
                                      color: appTheme.teal40001,
                                      borderRadius: BorderRadius.circular(
                                        16.h,
                                      ),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgGridErrorcontainer40x11,
                                  height: 40.v,
                                  width: 11.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(
                                    top: 45.v,
                                    right: 27.h,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgUserErrorcontainer,
                                  height: 11.v,
                                  width: 9.h,
                                  alignment: Alignment.bottomRight,
                                  margin: EdgeInsets.only(
                                    right: 64.h,
                                    bottom: 68.v,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgDocumentFill2,
                                  height: 199.v,
                                  width: 161.h,
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 2.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Become a Flytor in just ",
                                  style: CustomTextStyles.titleSmallMedium_1,
                                ),
                                TextSpan(
                                  text: "5",
                                  style: CustomTextStyles.titleSmallBold,
                                ),
                                TextSpan(
                                  text: " Steps",
                                  style: CustomTextStyles.titleSmallBold,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 15.v),
                        _buildProfileSection(context),
                        SizedBox(height: 16.v),
                        _buildDroneDetailsSection(context),
                        SizedBox(height: 16.v),
                        _buildSpecificationsSection(context),
                        SizedBox(height: 16.v),
                        _buildKycSection(context),
                        SizedBox(height: 16.v),
                        _buildBankDetailsSection(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildStartNow(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrameErrorcontainer,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(bottom: 20.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              bottom: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Profile",
                    style: CustomTextStyles.bodyMediumBlack90001,
                  ),
                ),
                SizedBox(height: 7.v),
                Text(
                  "Pending",
                  style: theme.textTheme.labelMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowdown,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              right: 4.h,
              bottom: 16.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDroneDetailsSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrameErrorcontainer20x20,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(bottom: 20.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              bottom: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Drone Details",
                  style: CustomTextStyles.bodyMediumBlack90001,
                ),
                SizedBox(height: 7.v),
                Text(
                  "Pending",
                  style: theme.textTheme.labelMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowdown,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              right: 4.h,
              bottom: 16.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSpecificationsSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame20x20,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(bottom: 20.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 2.v,
              bottom: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Specifications",
                  style: CustomTextStyles.bodyMediumBlack90001,
                ),
                SizedBox(height: 6.v),
                Text(
                  "Pending",
                  style: theme.textTheme.labelMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowdown,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              right: 4.h,
              bottom: 16.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildKycSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 67.h,
            margin: EdgeInsets.only(bottom: 1.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrame1,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(bottom: 18.v),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "KYC",
                      style: CustomTextStyles.bodyMediumBlack90001,
                    ),
                    SizedBox(height: 7.v),
                    Text(
                      "Pending",
                      style: theme.textTheme.labelMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowdown,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              right: 4.h,
              bottom: 16.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBankDetailsSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame2,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(bottom: 20.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              bottom: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bank Details",
                  style: CustomTextStyles.bodyMediumBlack90001,
                ),
                SizedBox(height: 7.v),
                Text(
                  "Pending",
                  style: theme.textTheme.labelMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowdown,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              right: 4.h,
              bottom: 16.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStartNow(BuildContext context) {
    return CustomElevatedButton(
      text: "Start Now",
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 24.v,
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientPrimaryToGrayTL81Decoration,
    );
  }
}
