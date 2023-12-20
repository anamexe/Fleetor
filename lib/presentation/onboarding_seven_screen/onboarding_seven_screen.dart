import 'package:flutter/material.dart';import 'package:flytor/core/app_export.dart';import 'package:flytor/widgets/app_bar/appbar_leading_image.dart';import 'package:flytor/widgets/app_bar/appbar_subtitle.dart';import 'package:flytor/widgets/app_bar/custom_app_bar.dart';import 'package:flytor/widgets/custom_drop_down.dart';import 'package:flytor/widgets/custom_elevated_button.dart';import 'package:flytor/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class OnboardingSevenScreen extends StatelessWidget {OnboardingSevenScreen({Key? key}) : super(key: key);

TextEditingController droneUINnumbervalueController = TextEditingController();

List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 2.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Progress", style: CustomTextStyles.bodySmall10), SizedBox(height: 7.v), Padding(padding: EdgeInsets.only(left: 4.h), child: Text("20% to Complete", style: CustomTextStyles.titleSmall_2)), SizedBox(height: 5.v), _buildDroneUINnumbervalue(context), SizedBox(height: 26.v), _buildTwitter(context), SizedBox(height: 16.v), CustomImageView(imagePath: ImageConstant.imgRectangle2552, height: 48.v, width: 64.h, radius: BorderRadius.circular(4.h)), SizedBox(height: 15.v), Text("Image -1", style: CustomTextStyles.titleSmallMedium_2), SizedBox(height: 7.v), _buildFileNamePng2(context), SizedBox(height: 16.v), _buildOnboardingSeven(context), SizedBox(height: 5.v)]))), bottomNavigationBar: _buildNext(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowdown, margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "Drone Details", margin: EdgeInsets.only(left: 11.h))); } 
/// Section Widget
Widget _buildDroneUINnumbervalue(BuildContext context) { return Column(children: [SliderTheme(data: SliderThemeData(trackShape: RoundedRectSliderTrackShape(), activeTrackColor: appTheme.teal400, inactiveTrackColor: appTheme.gray10003, thumbColor: appTheme.teal400, thumbShape: RoundSliderThumbShape()), child: Slider(value: 23.91, min: 0.0, max: 100.0, onChanged: (value) {})), SizedBox(height: 34.v), CustomTextFormField(controller: droneUINnumbervalueController, hintText: "Drone UIN number", textInputAction: TextInputAction.done, textInputType: TextInputType.number), SizedBox(height: 20.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdown, height: 20.adaptSize, width: 20.adaptSize)), hintText: "Drone Category", items: dropdownItemList, onChanged: (value) {})]); } 
/// Section Widget
Widget _buildTwitter(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 4.v, bottom: 2.v), child: Text("Upload Drone Image", style: theme.textTheme.titleSmall)), CustomImageView(imagePath: ImageConstant.imgTwitter, height: 24.adaptSize, width: 24.adaptSize)]); } 
/// Section Widget
Widget _buildFileNamePng2(BuildContext context) { return Column(children: [_buildFileNamePng(context, fileNamePng: "File name.....png"), SizedBox(height: 4.v), Divider(color: appTheme.teal400)]); } 
/// Section Widget
Widget _buildOnboardingSeven(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgRectangle2552, height: 48.v, width: 64.h, radius: BorderRadius.circular(4.h)), SizedBox(height: 15.v), Text("Image -1", style: CustomTextStyles.titleSmallMedium_2), SizedBox(height: 7.v), _buildFileNamePng(context, fileNamePng: "File name.....png"), SizedBox(height: 4.v), Divider(color: appTheme.teal400)]); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return CustomElevatedButton(text: "Next", margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 24.v), buttonStyle: CustomButtonStyles.none, decoration: CustomButtonStyles.gradientPrimaryToGrayTL81Decoration); } 
/// Common widget
Widget _buildFileNamePng(BuildContext context, {required String fileNamePng, }) { return Row(children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text(fileNamePng, style: CustomTextStyles.labelMediumBlueA200.copyWith(decoration: TextDecoration.underline, color: appTheme.blueA200))), Spacer(), CustomImageView(imagePath: ImageConstant.imgFramePrimarycontainer, height: 16.adaptSize, width: 16.adaptSize), CustomImageView(imagePath: ImageConstant.imgFrame, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 16.h))]); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
