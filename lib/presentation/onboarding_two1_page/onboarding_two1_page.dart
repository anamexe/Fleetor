import '../onboarding_two1_page/widgets/bookingdetails2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';
import 'package:flytor/widgets/custom_elevated_button.dart';
import 'package:flytor/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class OnboardingTwo1Page extends StatefulWidget {
  const OnboardingTwo1Page({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingTwo1PageState createState() => OnboardingTwo1PageState();
}

class OnboardingTwo1PageState extends State<OnboardingTwo1Page>
    with AutomaticKeepAliveClientMixin<OnboardingTwo1Page> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 23.v),
              _buildWeeklySection(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWeeklySection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomElevatedButton(
                height: 28.v,
                width: 90.h,
                text: "Weekly",
                margin: EdgeInsets.only(bottom: 1.v),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 4.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFrameBlack9000120x20,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: theme.textTheme.labelLarge!,
              ),
              CustomOutlinedButton(
                width: 74.h,
                text: "Filter",
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 5.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFrame6,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 16.v,
              );
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return Bookingdetails2ItemWidget();
            },
          ),
        ],
      ),
    );
  }
}
