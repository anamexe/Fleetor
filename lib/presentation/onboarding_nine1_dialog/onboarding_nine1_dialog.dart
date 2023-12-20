import 'package:flutter/material.dart';import 'package:flytor/core/app_export.dart';import 'package:flytor/widgets/custom_elevated_button.dart';class OnboardingNine1Dialog extends StatelessWidget {const OnboardingNine1Dialog({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return Container(width: 327.h, padding: EdgeInsets.all(24.h), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgFrame, height: 48.adaptSize, width: 48.adaptSize), SizedBox(height: 11.v), Text("Details Submitted Successfully", style: CustomTextStyles.titleMediumOnErrorContainer), SizedBox(height: 9.v), SizedBox(width: 275.h, child: Text("Once your documents is verified you can start using the services", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodyLargeGray600.copyWith(height: 1.50))), SizedBox(height: 22.v), CustomElevatedButton(text: "Close", buttonStyle: CustomButtonStyles.none, decoration: CustomButtonStyles.gradientPrimaryToGrayTL81Decoration, onPressed: () {onTapClose(context);})])); } 
/// Navigates to the onboardingTwelve1Screen when the action is triggered.
onTapClose(BuildContext context) { Navigator.pushNamed(context, AppRoutes.onboardingTwelve1Screen); } 
 }