import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';
import 'package:flytor/widgets/custom_elevated_button.dart';
import 'package:flytor/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class OnboardingEleven1Bottomsheet extends StatelessWidget {
  OnboardingEleven1Bottomsheet({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  List<String> radioList = [
    "lbl_out_of_range",
    "msg_drone_not_available",
    "lbl_technical_issue",
    "msg_reason_not_listed"
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 25.v),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          _buildSelectReasonForCancellation(context),
          SizedBox(height: 34.v),
          Opacity(
            opacity: 0.8,
            child: CustomElevatedButton(
              text: "Reject Service",
              margin: EdgeInsets.symmetric(horizontal: 24.h),
              buttonStyle: CustomButtonStyles.none,
              decoration: CustomButtonStyles
                  .gradientSecondaryContainerToOnPrimaryDecoration,
            ),
          ),
          SizedBox(height: 30.v),
          Divider(
            color: appTheme.gray10002,
          ),
          SizedBox(height: 30.v),
          Text(
            "Back",
            style: CustomTextStyles.titleMediumTeal400,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSelectReasonForCancellation(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 24.h,
            top: 15.v,
            right: 232.h,
          ),
          child: CustomRadioButton(
            text: "Out of Range",
            value: radioList[2],
            groupValue: radioGroup,
            padding: EdgeInsets.symmetric(vertical: 2.v),
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 24.h,
            top: 16.v,
            right: 192.h,
          ),
          child: CustomRadioButton(
            text: "Drone not available",
            value: radioList[3],
            groupValue: radioGroup,
            padding: EdgeInsets.symmetric(vertical: 3.v),
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 24.h,
            top: 16.v,
            right: 218.h,
          ),
          child: CustomRadioButton(
            text: "Technical issue",
            value: radioList[4],
            groupValue: radioGroup,
            padding: EdgeInsets.symmetric(vertical: 3.v),
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 24.h,
            top: 16.v,
            right: 171.h,
          ),
          child: CustomRadioButton(
            text: "Reason not listed here",
            value: radioList[5],
            groupValue: radioGroup,
            padding: EdgeInsets.symmetric(vertical: 3.v),
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
      ],
    );
  }
}
