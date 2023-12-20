import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flytor/core/app_export.dart';
import 'package:flytor/widgets/app_bar/appbar_leading_image.dart';
import 'package:flytor/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:flytor/widgets/app_bar/appbar_title_image.dart';
import 'package:flytor/widgets/app_bar/custom_app_bar.dart';
import 'package:flytor/widgets/custom_elevated_button.dart';

class OnboardingSeventeen1Screen extends StatelessWidget {
  const OnboardingSeventeen1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            // appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Column(children: [
                  _buildBookingIdSm(context),
                  SizedBox(height: 16.0),
                  _buildCustomerDetails(context),
                  SizedBox(height: 16.0),
                  _buildPaymentSummary(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildEndOtp(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffffffff),
      leading: Container(
        // margin: EdgeInsets.only(left: 16.0, top: 17.0,bottom: 17.0),
        child: IconButton(
          icon: Icon(Icons.arrow_back_ios_new,),
          onPressed: () {},
        ),
      ),
      // centerTitle: true,
      leadingWidth: 36.0,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 90.0),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/img_frame_teal_400.svg',
            ),
            Container(
                margin: EdgeInsets.only(top: 17.0,bottom: 17.0),
                child: Text('Booking Confirmed',
                  style: TextStyle(
                    fontFamily: 'InterBold',
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                )),
          ],
        ),
      ),
    );
    // return CustomAppBar(
    //     height: 54.v,
    //     leadingWidth: 36.h,
    //     leading: AppbarLeadingImage(
    //         imagePath: ImageConstant.imgArrowdown,
    //         margin: EdgeInsets.only(left: 16.h, top: 17.v, bottom: 17.v),
    //         onTap: () {
    //           onTapArrowLeft(context);
    //         }),
    //     centerTitle: true,
    //     title: Row(children: [
    //       AppbarTitleImage(imagePath: ImageConstant.imgFramePrimary),
    //       AppbarSubtitleOne(
    //           text: "Booking Confirmed ",
    //           margin: EdgeInsets.only(left: 4.h, top: 2.v))
    //     ]));
  }

  /// Section Widget
  Widget _buildBookingIdSm(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),

        // width: 343.h,
        // padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v),
        // decoration: AppDecoration.outlineBlack
        //     .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Booking ID: ",
                          style: CustomTextStyles.titleSmallMedium_1),
                      TextSpan(
                          text: "SM-1003448980",
                          style: CustomTextStyles.bodyMediumBlack90001_2)
                    ]),
                    textAlign: TextAlign.left),
                SizedBox(height: 12.v),
                Row(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgFrameBlack9000116x16,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v)),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, top: 2.v),
                      child: Text("1st June -  4th June",
                          style: theme.textTheme.bodySmall))
                ]),
                SizedBox(height: 10.v),
                Row(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgFrame16x16,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v)),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, top: 3.v),
                      child: Text("4:pm", style: theme.textTheme.bodySmall))
                ])
              ]),
        ));
  }

  /// Section Widget
  Widget _buildCustomerDetails(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 11.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Customer Details",
                      style: CustomTextStyles.titleSmallMedium)),
              SizedBox(height: 15.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgFrame3,
                        height: 16.adaptSize,
                        width: 16.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child:
                            Text("Aziz Gida", style: theme.textTheme.bodySmall))
                  ])),
              SizedBox(height: 10.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgFrame4,
                    height: 16.adaptSize,
                    width: 16.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text("9769876231",
                        style: CustomTextStyles.labelLargeBlueA200)),
                Spacer(),
                Text("Call User", style: CustomTextStyles.titleSmallBlueA200)
              ]),
              SizedBox(height: 14.v),
              Divider(),
              SizedBox(height: 11.v),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgFrame5,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(bottom: 25.v)),
                  Expanded(
                      child: Container(
                          width: 294.h,
                          margin: EdgeInsets.only(left: 4.h),
                          child: Text(
                              "8-1-329/C, Koh E Sar Colony, Brindavan Colony, Toli Chowki, Hyderabad, Telangana 500008",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodySmall!
                                  .copyWith(height: 1.67))))
                ]),
                SizedBox(height: 5.v),
                Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text("View Map",
                        style: CustomTextStyles.titleSmallBlueA200
                            .copyWith(decoration: TextDecoration.underline)))
              ])
            ]));
  }

  /// Section Widget
  Widget _buildPaymentSummary(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text("Payment Summary",
                  style: CustomTextStyles.titleSmallMedium)),
          SizedBox(height: 14.v),
          _buildDroneCharges(context,
              droneChargesText: "Payment Mode", priceText: "Cash"),
          SizedBox(height: 12.v),
          _buildDroneCharges(context,
              droneChargesText: "Drone Charges", priceText: "₹ 2,000"),
          SizedBox(height: 12.v),
          _buildDroneCharges(context,
              droneChargesText: "Service Charges", priceText: "₹ 1,000"),
          SizedBox(height: 11.v),
          _buildDroneCharges(context,
              droneChargesText: "Sub-Total", priceText: "₹ 3,000")
        ]));
  }

  /// Section Widget
  Widget _buildEndOtp(BuildContext context) {
    return CustomElevatedButton(
        text: "End OTP",
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToGrayTL81Decoration);
  }

  /// Common widget
  Widget _buildDroneCharges(
    BuildContext context, {
    required String droneChargesText,
    required String priceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(droneChargesText,
          style:
              theme.textTheme.bodySmall!.copyWith(color: appTheme.black90001)),
      Text(priceText,
          style:
              theme.textTheme.labelLarge!.copyWith(color: appTheme.black90001))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}