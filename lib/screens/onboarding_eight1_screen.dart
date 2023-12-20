import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flytor/core/app_export.dart';
import 'package:flytor/screens/onboarding_three1_page.dart';
import 'package:flytor/widgets/custom_bottom_bar.dart';
import 'package:flytor/widgets/custom_elevated_button.dart';
import 'package:flytor/widgets/custom_switch.dart';

class OnboardingEight1Screen extends StatelessWidget {
  OnboardingEight1Screen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
   var mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          // width: double.maxFinite,
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 20.0),
              _buildGoOnlineRow(context),
              SizedBox(height: 37.0),
              _buildRegisteredDroneColumn(context),
              SizedBox(height: 37.0),
              _buildEndOTPColumn(context),
              SizedBox(height: 10.0),
            ],
          ),
        ),
        // bottomNavigationBar: MyNavigationBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildGoOnlineRow(BuildContext context) {
    var switchValue = false;
    return Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffF0F9FD),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Go Online",
            style: TextStyle(
                fontFamily: 'InterRegular',
                fontWeight: FontWeight.w500,
                fontSize: 12.0),
          ),
          // CustomSwitch(
          //   value: isSelectedSwitch,
          //   onChange: (value) {
          //     isSelectedSwitch = value;
          //   },
          // ),
          CupertinoSwitch(
            // This bool value toggles the switch.
            value: switchValue,
            activeColor: CupertinoColors.activeBlue,
            onChanged: (bool? value) {
              // This is called when the user toggles the switch.
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRegisteredDroneColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Registered Drone",
          style: TextStyle(
            fontFamily: 'InterSemiBold',
            fontWeight: FontWeight.w600,
            fontSize: 14.0,
          ),
        ),
        SizedBox(height: 12.0),
        Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/drone.png',
                  // height: 200.v,
                  // width: 500.h,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 16.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "AGRAS MG-1S SERIES",
                    // style: CustomTextStyles.titleSmall_1,
                    style: TextStyle(
                        fontFamily: 'InterSemiBold0',
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Divider(),
                SizedBox(
                  height: 16.0,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Status: ",
                          style: TextStyle(
                            fontFamily: 'InterBold',
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0,
                            color: Color(0xff000000),
                          ),
                        ),
                        TextSpan(
                          text: "Online",
                          style: TextStyle(
                            fontFamily: 'InterMedium',
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0,
                            color: Color(0xff219994),
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEndOTPColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Upcoming Bookings",
          style: TextStyle(
            fontFamily: 'InterSemiBold',
            fontWeight: FontWeight.w600,
            fontSize: 14.0,
          ),
        ),
        SizedBox(height: 13.0),
        Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          // padding: EdgeInsets.all(12.h),
          // decoration: AppDecoration.outlineBlack.copyWith(
          //   borderRadius: BorderRadiusStyle.roundedBorder4,
          // ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "AGRAS MG-1S SERIES",
                  style: TextStyle(
                    fontFamily: 'InterLight',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(height: 6.0),
                Padding(
                  padding: EdgeInsets.only(right: 23.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 107.0,
                        child: Row(
                          children: [
                            // CustomImageView(
                            //   imagePath: ImageConstant.imgFrameGray700,
                            //   height: 20.0,
                            //   width: 20.0,
                            // ),
                            SvgPicture.asset(
                              'assets/images/img_frame_black_900_01_16x16.svg',
                              height: 20.0,
                              width: 20.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 4.0,
                                top: 2.0,
                                bottom: 2.0,
                              ),
                              child: Text(
                                "12th Dec 2023",
                                style: TextStyle(
                                  fontFamily: 'InterLight',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 17.0),
                        child: SizedBox(
                          height: 20.0,
                          child: VerticalDivider(
                            width: 1.0,
                            thickness: 1.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),

                      Row(
                        children: [
                          // CustomImageView(
                          //   imagePath: ImageConstant.imgClock,
                          //   height: 20.adaptSize,
                          //   width: 20.adaptSize,
                          // ),
                          SvgPicture.asset(
                            'assets/images/img_clock.svg',
                            height: 20.0,
                            width: 20.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.0,
                              top: 2.0,
                              bottom: 2.0,
                            ),
                            child: Text(
                              "11am",
                                style: TextStyle(
                                  fontFamily: 'InterLight',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 13.0),
                        child: SizedBox(
                          height: 20.0,
                          child: VerticalDivider(
                            width: 1.0,
                            thickness: 1.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Row(
                        children: [
                          // CustomImageView(
                          //   imagePath: ImageConstant.imgLinkedin,
                          //   height: 20.adaptSize,
                          //   width: 20.adaptSize,
                          // ),
                          SvgPicture.asset(
                            'assets/images/img_linkedin.svg',
                            height: 20.0,
                            width: 20.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.0,
                              top: 2.0,
                              bottom: 2.0,
                            ),
                            child: Text(
                              "Tolichowki",
                                style: TextStyle(
                                  fontFamily: 'InterLight',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.0),
                Divider(),
                SizedBox(height: 11.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        "View Details",
                        style: TextStyle(
                          fontFamily: 'InterBold',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff219994),
                        ),
                        // style: CustomTextStyles.labelLargeTeal400,
                      ),
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffCDCDCD),
                            Color(0xff051615),
                          ]
                        ),
                      ),
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Start OTP',
                          style: TextStyle(
                            fontFamily: 'InterRegular',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffffffff),
                          ),
                          ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          disabledBackgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          padding: EdgeInsets.symmetric(horizontal: 29.0,),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  ///Handling page based on route
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.onboardingThree1Page:
  //       return OnboardingThree1Page();
  //     default:
  //       return DefaultWidget();
  //   }
  // }
}
