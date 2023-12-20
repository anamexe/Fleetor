import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';
import 'package:flytor/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class OnboardingSeven1Bottomsheet extends StatelessWidget {
  const OnboardingSeven1Bottomsheet({Key? key})
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
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Text(
              "Service Confirmation",
              style: CustomTextStyles.titleMediumOnErrorContainerBold,
            ),
          ),
          SizedBox(height: 28.v),
          Divider(),
          SizedBox(height: 31.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "Ready to depart for the customer's location?",
              style: CustomTextStyles.bodyMediumBlack90001,
            ),
          ),
          SizedBox(height: 40.v),
          CustomElevatedButton(
            text: "Confirm Departure",
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
