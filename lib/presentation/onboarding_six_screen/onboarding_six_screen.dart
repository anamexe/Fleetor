import 'package:flutter/material.dart';import 'package:flytor/core/app_export.dart';import 'package:flytor/widgets/app_bar/appbar_leading_image.dart';import 'package:flytor/widgets/app_bar/appbar_subtitle.dart';import 'package:flytor/widgets/app_bar/custom_app_bar.dart';import 'package:flytor/widgets/custom_elevated_button.dart';import 'package:flytor/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class OnboardingSixScreen extends StatelessWidget {OnboardingSixScreen({Key? key}) : super(key: key);

TextEditingController droneUINnumbervalueController = TextEditingController();

TextEditingController droneCategoryvalueController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 2.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("Progress", style: CustomTextStyles.bodySmall10)), SizedBox(height: 7.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 4.h), child: Text("20% to Complete", style: CustomTextStyles.titleSmall_2))), SizedBox(height: 5.v), SliderTheme(data: SliderThemeData(trackShape: RoundedRectSliderTrackShape(), activeTrackColor: appTheme.teal400, inactiveTrackColor: appTheme.gray10003, thumbColor: appTheme.teal400, thumbShape: RoundSliderThumbShape()), child: Slider(value: 26.82, min: 0.0, max: 100.0, onChanged: (value) {})), SizedBox(height: 34.v), CustomTextFormField(controller: droneUINnumbervalueController, hintText: "Drone UIN number", textInputType: TextInputType.number), SizedBox(height: 20.v), CustomTextFormField(controller: droneCategoryvalueController, hintText: "Drone Category", textInputAction: TextInputAction.done), SizedBox(height: 24.v), _buildTwitterRow(context), SizedBox(height: 5.v)]))), bottomNavigationBar: _buildNextButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowdown, margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "Drone Details", margin: EdgeInsets.only(left: 11.h))); } 
/// Section Widget
Widget _buildTwitterRow(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 4.v, bottom: 2.v), child: Text("Upload Drone Image", style: theme.textTheme.titleSmall)), CustomImageView(imagePath: ImageConstant.imgTwitter, height: 24.adaptSize, width: 24.adaptSize, onTap: () {onTapImgTwitter(context);})]); } 
/// Section Widget
Widget _buildNextButton(BuildContext context) { return CustomElevatedButton(text: "Next", margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 24.v), buttonStyle: CustomButtonStyles.none, decoration: CustomButtonStyles.gradientPrimaryToGrayTL81Decoration); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the onboardingSixteenScreen when the action is triggered.
onTapImgTwitter(BuildContext context) { Navigator.pushNamed(context, AppRoutes.onboardingSixteenScreen); } 
 }
