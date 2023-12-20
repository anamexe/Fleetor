import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';
import 'package:flytor/widgets/custom_checkbox_button.dart';
import 'package:flytor/widgets/custom_drop_down.dart';
import 'package:flytor/widgets/custom_elevated_button.dart';

class OnboardingThreeScreen extends StatelessWidget {
  OnboardingThreeScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  bool checkBoxIcon = false;

  bool nearbyLocationStack = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 26.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 190.v,
                width: 178.h,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                        margin: EdgeInsets.only(
                          right: 3.h,
                          bottom: 70.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.teal40001,
                          borderRadius: BorderRadius.circular(
                            11.h,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgGridErrorcontainer,
                      height: 40.v,
                      width: 14.h,
                      alignment: Alignment.centerRight,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgGridErrorcontainer14x21,
                      height: 14.v,
                      width: 21.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(bottom: 57.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgUntitledArtwork190x158,
                      height: 190.v,
                      width: 158.h,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 19.v),
              Text(
                "Which City?",
                style: CustomTextStyles.titleMediumBlack90001Bold18,
              ),
              SizedBox(height: 7.v),
              Text(
                "Which location can a user book your drone?",
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 17.v),
              CustomDropDown(
                icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 21.v, 16.h, 15.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowdown,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
                hintText: "Select City",
                items: dropdownItemList,
                onChanged: (value) {},
              ),
              SizedBox(height: 36.v),
              Container(
                width: 323.h,
                margin: EdgeInsets.only(right: 19.h),
                child: Text(
                  "Please Select the KM from your current location up to you can provide the service.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLarge_1.copyWith(
                    height: 1.83,
                  ),
                ),
              ),
              SizedBox(height: 21.v),
              SizedBox(
                height: 38.v,
                width: 274.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    _buildCheckBoxIcon(context),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "More then 25Km from your service location",
                        style: CustomTextStyles.bodySmallLight,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22.v),
              SizedBox(
                height: 38.v,
                width: 271.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    _buildNearbyLocationStack(context),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Less then 25Km from your service location",
                        style: CustomTextStyles.bodySmallLight,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildNextButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckBoxIcon(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: CustomCheckboxButton(
        alignment: Alignment.topLeft,
        text: "Any where within the City",
        value: checkBoxIcon,
        padding: EdgeInsets.symmetric(vertical: 2.v),
        onChange: (value) {
          checkBoxIcon = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNearbyLocationStack(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: CustomCheckboxButton(
        alignment: Alignment.topLeft,
        text: "Only nearby Location",
        value: nearbyLocationStack,
        padding: EdgeInsets.symmetric(vertical: 2.v),
        onChange: (value) {
          nearbyLocationStack = value;
        },
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
