import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';
import 'package:flytor/widgets/custom_elevated_button.dart';

class OnboardingFiveScreen extends StatelessWidget {
  const OnboardingFiveScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 20.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 196.v,
                width: 157.h,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        margin: EdgeInsets.only(bottom: 36.v),
                        decoration: BoxDecoration(
                          color: appTheme.teal40001,
                          borderRadius: BorderRadius.circular(
                            20.h,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgGridErrorcontainer,
                      height: 33.v,
                      width: 11.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        left: 8.h,
                        top: 69.v,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgGridErrorcontainer,
                      height: 33.v,
                      width: 11.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        left: 8.h,
                        top: 45.v,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgUntitledArtwork196x150,
                      height: 196.v,
                      width: 150.h,
                      alignment: Alignment.centerLeft,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.v),
              _buildRegistrationForm(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildNextButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildRegistrationForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 48.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Registration for?",
            style: CustomTextStyles.titleMediumBlack90001Bold18,
          ),
          SizedBox(height: 7.v),
          Text(
            "You can register as an individual or an organisation.",
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.only(right: 47.h),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.h,
                    vertical: 13.v,
                  ),
                  decoration: AppDecoration.outlineBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgBag,
                        height: 26.v,
                        width: 30.h,
                      ),
                      SizedBox(height: 9.v),
                      Text(
                        "Organization",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 116.h,
                  margin: EdgeInsets.only(left: 16.h),
                  padding: EdgeInsets.all(7.h),
                  decoration: AppDecoration.outlineTeal.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFrame,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(bottom: 51.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          top: 7.v,
                          bottom: 7.v,
                        ),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgBagErrorcontainer,
                              height: 26.v,
                              width: 30.h,
                            ),
                            SizedBox(height: 8.v),
                            Text(
                              "Individual",
                              style: CustomTextStyles.bodyMediumBlack90001,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Next",
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
