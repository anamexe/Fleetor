import 'package:another_stepper/dto/stepper_data.dart';import 'package:another_stepper/widgets/another_stepper.dart';import 'package:flutter/material.dart';import 'package:flytor/core/app_export.dart';import 'package:flytor/widgets/app_bar/appbar_leading_image.dart';import 'package:flytor/widgets/app_bar/appbar_subtitle.dart';import 'package:flytor/widgets/app_bar/custom_app_bar.dart';import 'package:flytor/widgets/custom_elevated_button.dart';import 'package:flytor/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class OnboardingThirteenScreen extends StatelessWidget {OnboardingThirteenScreen({Key? key}) : super(key: key);

TextEditingController droneWeightValueController = TextEditingController();

TextEditingController droneResolutionValueController = TextEditingController();

TextEditingController batteryLifeValueController = TextEditingController();

TextEditingController rangeValueController = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 2.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("Progress", style: CustomTextStyles.bodySmall10)), SizedBox(height: 7.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 4.h), child: Text("40% to Complete", style: CustomTextStyles.titleSmall_2))), SizedBox(height: 5.v), _buildOnboardingThirteen(context), SizedBox(height: 34.v), _buildDroneWeightValue(context), SizedBox(height: 16.v), _buildDroneResolutionValue(context), SizedBox(height: 16.v), _buildBatteryLifeValue(context), SizedBox(height: 16.v), _buildRangeValue(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildNext(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowdown, margin: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "Specification", margin: EdgeInsets.only(left: 11.h))); } 
/// Section Widget
Widget _buildOnboardingThirteen(BuildContext context) { return AnotherStepper(stepperDirection: Axis.horizontal, activeIndex: 0, inverted: true, stepperList: [StepperData(), StepperData(), StepperData(), StepperData(), StepperData()]); } 
/// Section Widget
Widget _buildDroneWeightValue(BuildContext context) { return CustomTextFormField(controller: droneWeightValueController, hintText: "Drone Weight"); } 
/// Section Widget
Widget _buildDroneResolutionValue(BuildContext context) { return CustomTextFormField(controller: droneResolutionValueController, hintText: "Drone Resolution"); } 
/// Section Widget
Widget _buildBatteryLifeValue(BuildContext context) { return CustomTextFormField(controller: batteryLifeValueController, hintText: "Battery Life"); } 
/// Section Widget
Widget _buildRangeValue(BuildContext context) { return CustomTextFormField(controller: rangeValueController, hintText: "Range", textInputAction: TextInputAction.done); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return CustomElevatedButton(text: "Next", margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 24.v), buttonStyle: CustomButtonStyles.none, decoration: CustomButtonStyles.gradientPrimaryToGrayTL81Decoration); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
