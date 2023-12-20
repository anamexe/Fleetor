import 'package:another_stepper/dto/stepper_data.dart';import 'package:another_stepper/widgets/another_stepper.dart';import 'package:flutter/material.dart';import 'package:flytor/core/app_export.dart';import 'package:flytor/widgets/app_bar/appbar_leading_image.dart';import 'package:flytor/widgets/app_bar/appbar_subtitle.dart';import 'package:flytor/widgets/app_bar/custom_app_bar.dart';import 'package:flytor/widgets/custom_elevated_button.dart';import 'package:flytor/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class OnboardingTwoScreen extends StatelessWidget {OnboardingTwoScreen({Key? key}) : super(key: key);

TextEditingController firstNameController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

TextEditingController accountNumberValueController = TextEditingController();

TextEditingController reEnterAccountNumberValueController = TextEditingController();

TextEditingController ifscCodeValueController = TextEditingController();

TextEditingController nameController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 2.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("Progress", style: CustomTextStyles.bodySmall10)), SizedBox(height: 7.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 4.h), child: Text("80% to Complete", style: CustomTextStyles.titleSmall_2))), SizedBox(height: 5.v), _buildStepperSection(context), SizedBox(height: 34.v), _buildFirstName(context), SizedBox(height: 16.v), _buildLastName(context), SizedBox(height: 16.v), _buildAccountNumberValue(context), SizedBox(height: 16.v), _buildReEnterAccountNumberValue(context), SizedBox(height: 16.v), _buildIfscCodeValue(context), SizedBox(height: 16.v), _buildName(context), SizedBox(height: 5.v)]))), bottomNavigationBar: _buildSubmit(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowdown, margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "Bank details", margin: EdgeInsets.only(left: 11.h))); } 
/// Section Widget
Widget _buildStepperSection(BuildContext context) { return AnotherStepper(stepperDirection: Axis.horizontal, activeIndex: 0, inverted: true, stepperList: [StepperData(), StepperData(), StepperData(), StepperData(), StepperData()]); } 
/// Section Widget
Widget _buildFirstName(BuildContext context) { return CustomTextFormField(controller: firstNameController, hintText: "First Name"); } 
/// Section Widget
Widget _buildLastName(BuildContext context) { return CustomTextFormField(controller: lastNameController, hintText: "Last Name"); } 
/// Section Widget
Widget _buildAccountNumberValue(BuildContext context) { return CustomTextFormField(controller: accountNumberValueController, hintText: "Account Number", textInputType: TextInputType.number); } 
/// Section Widget
Widget _buildReEnterAccountNumberValue(BuildContext context) { return CustomTextFormField(controller: reEnterAccountNumberValueController, hintText: "Re-Enter Account Number", textInputType: TextInputType.number, contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 19.v)); } 
/// Section Widget
Widget _buildIfscCodeValue(BuildContext context) { return CustomTextFormField(controller: ifscCodeValueController, hintText: "IFSC Code"); } 
/// Section Widget
Widget _buildName(BuildContext context) { return CustomTextFormField(controller: nameController, hintText: "Bank Name", textInputAction: TextInputAction.done); } 
/// Section Widget
Widget _buildSubmit(BuildContext context) { return CustomElevatedButton(text: "Submit", margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 24.v), buttonStyle: CustomButtonStyles.none, decoration: CustomButtonStyles.gradientPrimaryToGrayTL81Decoration); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
