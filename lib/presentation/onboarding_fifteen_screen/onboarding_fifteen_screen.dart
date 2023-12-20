import 'package:flutter/material.dart';import 'package:flytor/core/app_export.dart';import 'package:flytor/widgets/app_bar/appbar_leading_image.dart';import 'package:flytor/widgets/app_bar/appbar_subtitle.dart';import 'package:flytor/widgets/app_bar/custom_app_bar.dart';import 'package:flytor/widgets/custom_elevated_button.dart';import 'package:flytor/widgets/custom_radio_button.dart';import 'package:flytor/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class OnboardingFifteenScreen extends StatelessWidget {OnboardingFifteenScreen({Key? key}) : super(key: key);

String areYouIndividualOrBusiness = "";

List<String> radioList = ["lbl_individual", "lbl_business"];

TextEditingController nameController = TextEditingController();

TextEditingController emailController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 2.v), child: Column(children: [_buildProgress(context), SizedBox(height: 37.v), Align(alignment: Alignment.centerLeft, child: Text("Are you individual or Business?", style: theme.textTheme.titleSmall)), SizedBox(height: 13.v), _buildAreYouIndividualOrBusiness(context), SizedBox(height: 24.v), CustomTextFormField(controller: nameController, hintText: "Name"), SizedBox(height: 16.v), CustomTextFormField(controller: emailController, hintText: "Email Address", textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress), SizedBox(height: 5.v)]))), bottomNavigationBar: _buildNext(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowdown, margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "Basic Details", margin: EdgeInsets.only(left: 11.h))); } 
/// Section Widget
Widget _buildToComplete(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("100% to Complete", style: CustomTextStyles.titleSmall_2), SizedBox(height: 5.v), Container(decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder4), child: Row(children: [Container(height: 12.v, width: 38.h, decoration: BoxDecoration(color: appTheme.teal400, borderRadius: BorderRadius.circular(6.h))), Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.only(left: 15.h, top: 4.v, bottom: 4.v), decoration: BoxDecoration(color: appTheme.teal400, borderRadius: BorderRadius.circular(2.h))), Spacer(flex: 19), Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.symmetric(vertical: 4.v), decoration: BoxDecoration(color: appTheme.teal400, borderRadius: BorderRadius.circular(2.h))), Spacer(flex: 19), Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.symmetric(vertical: 4.v), decoration: BoxDecoration(color: appTheme.teal400, borderRadius: BorderRadius.circular(2.h))), Spacer(flex: 19), Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.symmetric(vertical: 4.v), decoration: BoxDecoration(color: appTheme.teal400, borderRadius: BorderRadius.circular(2.h))), Spacer(flex: 19), Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.symmetric(vertical: 4.v), decoration: BoxDecoration(color: appTheme.teal400, borderRadius: BorderRadius.circular(2.h))), Spacer(flex: 21)]))]); } 
/// Section Widget
Widget _buildProgress(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Progress", style: CustomTextStyles.bodySmall10), SizedBox(height: 7.v), _buildToComplete(context)]); } 
/// Section Widget
Widget _buildAreYouIndividualOrBusiness(BuildContext context) { return Align(alignment: Alignment.centerLeft, child: Row(children: [CustomRadioButton(text: "Individual", value: radioList[0], groupValue: areYouIndividualOrBusiness, padding: EdgeInsets.symmetric(vertical: 3.v), onChange: (value) {areYouIndividualOrBusiness = value;}), Padding(padding: EdgeInsets.only(left: 20.h), child: CustomRadioButton(text: "Business", value: radioList[1], groupValue: areYouIndividualOrBusiness, padding: EdgeInsets.symmetric(vertical: 3.v), onChange: (value) {areYouIndividualOrBusiness = value;}))])); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return CustomElevatedButton(text: "Next", margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 24.v), buttonStyle: CustomButtonStyles.none, decoration: CustomButtonStyles.gradientPrimaryToGrayTL81Decoration); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
