import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';
import 'package:flytor/widgets/custom_elevated_button.dart';
import 'package:flytor/widgets/custom_pin_code_text_field.dart';
import 'package:flytor/widgets/custom_text_form_field.dart';

class OnboardingEightScreen extends StatelessWidget {
  OnboardingEightScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController enterOTPMessageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 33.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 77.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGrid,
                      height: 37.v,
                      width: 19.h,
                      margin: EdgeInsets.only(
                        top: 12.v,
                        bottom: 136.v,
                      ),
                    ),
                    Container(
                      height: 186.v,
                      width: 242.h,
                      margin: EdgeInsets.only(left: 4.h),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 53.adaptSize,
                              width: 53.adaptSize,
                              margin: EdgeInsets.only(
                                top: 55.v,
                                right: 32.h,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.teal40001,
                                borderRadius: BorderRadius.circular(
                                  26.h,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgOtp,
                            height: 186.v,
                            width: 242.h,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Welcome to Flytor",
                  style: CustomTextStyles.titleMediumBlack9000118,
                ),
              ),
              SizedBox(height: 9.v),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 226.h,
                  child: Text(
                    "Register as a Flytor, or log in if you’ve registered already.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumBlack90001_1.copyWith(
                      height: 1.43,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24.v),
              _buildEnterOtpMessageSection(context),
              SizedBox(height: 15.v),
              Text(
                "We have sent you the 6 digit OTP on your mobile number",
                style: CustomTextStyles.labelLarge_1,
              ),
              SizedBox(height: 52.v),
              Text(
                "Resent OTP",
                style: CustomTextStyles.titleSmallBlueA200_1.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildRegisterButtonSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildEnterOtpMessageSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 44.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextFormField(
            width: 64.h,
            controller: enterOTPMessageController,
            hintText: "Enter OTP",
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 55.h),
            child: CustomPinCodeTextField(
              context: context,
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRegisterButtonSection(BuildContext context) {
    return CustomElevatedButton(
      text: "Register",
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
