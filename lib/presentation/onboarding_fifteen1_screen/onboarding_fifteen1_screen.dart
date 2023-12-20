import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';
import 'package:flytor/screens/onboarding_three1_page.dart';
import 'package:flytor/widgets/custom_bottom_bar.dart';
import 'package:flytor/widgets/custom_elevated_button.dart';
import 'package:flytor/widgets/custom_switch.dart';

class OnboardingFifteen1Screen extends StatelessWidget {
  OnboardingFifteen1Screen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(16.h),
          child: Column(
            children: [
              _buildGoOnlineRow(context),
              SizedBox(height: 37.v),
              _buildRegisteredDroneColumn(context),
              SizedBox(height: 37.v),
              _buildStartOTPColumn(context),
              SizedBox(height: 10.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildGoOnlineRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.fillGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.v),
            child: Text(
              "Go Online",
              style: theme.textTheme.labelLarge,
            ),
          ),
          CustomSwitch(
            value: isSelectedSwitch,
            onChange: (value) {
              isSelectedSwitch = value;
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRegisteredDroneColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Registered Drone",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 13.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 16.v,
          ),
          decoration: AppDecoration.outlineBlack.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle2552,
                height: 200.v,
                width: 319.h,
                radius: BorderRadius.circular(
                  4.h,
                ),
              ),
              SizedBox(height: 18.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "AGRAS MG-1S SERIES",
                  style: CustomTextStyles.titleSmall_1,
                ),
              ),
              SizedBox(height: 18.v),
              Container(
                width: 319.h,
                padding: EdgeInsets.symmetric(vertical: 3.v),
                decoration: AppDecoration.outlineBlack90001,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Status: ",
                        style: theme.textTheme.labelLarge,
                      ),
                      TextSpan(
                        text: "Online",
                        style: CustomTextStyles.labelLargeTeal400_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildStartOTPColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Upcoming Bookings",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 13.v),
        Container(
          padding: EdgeInsets.all(12.h),
          decoration: AppDecoration.outlineBlack.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text(
                "AGRAS MG-1S SERIES",
                style: CustomTextStyles.titleSmallMedium_3,
              ),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(right: 23.h),
                child: Row(
                  children: [
                    SizedBox(
                      width: 107.h,
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFrameGray700,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              top: 2.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "12th Dec 2023",
                              style: CustomTextStyles.bodySmallGray900_1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: SizedBox(
                        height: 20.v,
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                        ),
                      ),
                    ),
                    Container(
                      width: 51.h,
                      margin: EdgeInsets.only(left: 11.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgClock,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              top: 2.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "11am",
                              style: CustomTextStyles.bodySmallGray900_1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 13.h),
                      child: SizedBox(
                        height: 20.v,
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                        ),
                      ),
                    ),
                    Container(
                      width: 83.h,
                      margin: EdgeInsets.only(left: 11.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgLinkedin,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              top: 2.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "Tolichowki",
                              style: CustomTextStyles.bodySmallGray900_1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              Divider(),
              SizedBox(height: 11.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.v),
                    child: Text(
                      "View Details",
                      style: CustomTextStyles.labelLargeTeal400,
                    ),
                  ),
                  CustomElevatedButton(
                    height: 36.v,
                    width: 114.h,
                    text: "Start OTP",
                    buttonStyle: CustomButtonStyles.none,
                    decoration:
                        CustomButtonStyles.gradientPrimaryToGrayTL81Decoration,
                    buttonTextStyle:
                        CustomTextStyles.labelLargeOnPrimaryContainer,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.onboardingThree1Page;
      case BottomBarEnum.Bookings:
        return "/";
      case BottomBarEnum.Payment:
        return "/";
      case BottomBarEnum.More:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.onboardingThree1Page:
        return OnboardingThree1Page();
      default:
        return DefaultWidget();
    }
  }
}
