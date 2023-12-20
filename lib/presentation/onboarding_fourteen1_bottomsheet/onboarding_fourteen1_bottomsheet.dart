import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';
import 'package:flytor/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class OnboardingFourteen1Bottomsheet extends StatelessWidget {
  const OnboardingFourteen1Bottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 17.v),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Text(
              "Enter Start OTP",
              style: CustomTextStyles.titleMediumOnErrorContainerBold,
            ),
          ),
          SizedBox(height: 28.v),
          Divider(),
          SizedBox(height: 26.v),
          Container(
            width: 238.h,
            margin: EdgeInsets.only(left: 16.h),
            child: Text(
              "Please enter the Start OTP provided \nby the customer.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumBlack90001.copyWith(
                height: 1.71,
              ),
            ),
          ),
          SizedBox(height: 44.v),
          SizedBox(
            width: 50.h,
            child: Divider(
              color: appTheme.gray700,
              indent: 16.h,
            ),
          ),
          SizedBox(
            width: 88.h,
            child: Divider(
              color: appTheme.gray700,
              indent: 54.h,
            ),
          ),
          SizedBox(
            width: 126.h,
            child: Divider(
              color: appTheme.gray700,
              indent: 92.h,
            ),
          ),
          SizedBox(
            width: 164.h,
            child: Divider(
              color: appTheme.gray700,
              indent: 130.h,
            ),
          ),
          SizedBox(height: 46.v),
          CustomElevatedButton(
            text: "Start Service",
            margin: EdgeInsets.symmetric(horizontal: 24.h),
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientPrimaryToGrayTL81Decoration,
            alignment: Alignment.center,
          ),
          SizedBox(height: 24.v),
          Divider(
            color: appTheme.gray10002,
          ),
          SizedBox(height: 30.v),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Remind me Later.",
              style: CustomTextStyles.titleMediumGray900,
            ),
          ),
        ],
      ),
    );
  }
}
