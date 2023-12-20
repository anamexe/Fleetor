import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';
import 'package:flytor/widgets/custom_elevated_button.dart';
import 'package:flytor/widgets/custom_text_form_field.dart';

class OnboardingFourteenScreen extends StatelessWidget {
  OnboardingFourteenScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController mobileNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 29.v,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(right: 71.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGrid,
                          height: 38.v,
                          width: 19.h,
                          margin: EdgeInsets.only(
                            top: 13.v,
                            bottom: 138.v,
                          ),
                        ),
                        Container(
                          height: 190.v,
                          width: 247.h,
                          margin: EdgeInsets.only(left: 4.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 53.adaptSize,
                                  width: 53.adaptSize,
                                  margin: EdgeInsets.only(right: 25.h),
                                  decoration: BoxDecoration(
                                    color: appTheme.teal40001,
                                    borderRadius: BorderRadius.circular(
                                      26.h,
                                    ),
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgNumber,
                                height: 190.v,
                                width: 247.h,
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 17.v),
                Text(
                  "Welcome to Flytor",
                  style: CustomTextStyles.titleMediumBlack9000118,
                ),
                SizedBox(height: 9.v),
                SizedBox(
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
                SizedBox(height: 33.v),
                _buildOnboardingForm(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildGetOTP(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildOnboardingForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Login",
          style: CustomTextStyles.titleMediumBlack90001Bold,
        ),
        SizedBox(height: 20.v),
        CustomTextFormField(
          controller: mobileNumberController,
          hintText: "Enter Mobile number",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.phone,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 19.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildGetOTP(BuildContext context) {
    return CustomElevatedButton(
      text: "Get OTP",
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
