import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flytor/screens/accept_booking_page.dart';
// import 'package:flytor/core/app_export.dart';
import 'package:flytor/screens/onboarding_eight1_screen.dart';
import 'package:flytor/presentation/onboarding_fifteen1_screen/onboarding_fifteen1_screen.dart';
import 'package:flytor/presentation/onboarding_seventeen1_screen/onboarding_seventeen1_screen.dart';
import 'package:flytor/screens/onboarding_sixteen1_screen.dart';
import 'package:flytor/screens/onboarding_three1_page.dart';
import 'package:flytor/screens/reject_booking_page.dart';
import 'package:flytor/widgets/custom_bottom_bar.dart';
import 'package:flytor/widgets/custom_elevated_button.dart';
// import 'package:flytor/widgets/custom_switch.dart';

class OnboardingOne1Screen extends StatelessWidget {
  OnboardingOne1Screen({Key? key})
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
          width: double.maxFinite,
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildGoOnlineYellow(context),
              SizedBox(height: 20.0),
              _buildGoOnlineRow(context),
              SizedBox(height: 37.0),
              _buildRegisteredDroneColumn(context),
              SizedBox(height: 37.0),
              _buildStartOTPColumn(context),
              SizedBox(height: 10.0),
            ],
          ),
        ),
        bottomNavigationBar: MyNavigationBar(),
      ),
    );
  }



  Widget _buildGoOnlineRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.teal[50]
      ),
      // decoration: AppDecoration.fillGray100.copyWith(
      //   borderRadius: BorderRadiusStyle.roundedBorder4,
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              "Go Online",
              // style: theme.textTheme.labelLarge,
            ),
          ),
          // CustomSwitch(
          //   value: isSelectedSwitch,
          //   onChange: (value) {
          //     isSelectedSwitch = value;
          //   },
          // ),
        ],
      ),
    );
  }
  /// Section Widget
  Widget _buildGoOnlineYellow(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(12.h),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(4.h) ,
      //       color: Colors.amber[50]
      // ),
      // decoration: AppDecoration.fillGray100.copyWith(
      //   borderRadius: BorderRadiusStyle.roundedBorder4,
      // ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(4.0),
            child: SvgPicture.asset(
              'assets/images/img_frame_deep_orange_a100.svg',
              height: 20.0,
              width: 20.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.0,bottom: 10.0,top: 10.0),
            child: Text(
              "Please go online to start your service.....dsdsds complete the content",
              style: TextStyle(fontSize: 10),
              // style: theme.textTheme.labelLarge,
            ),
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
          // style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 13.0),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 16.0,
          ),
          // decoration: AppDecoration.outlineBlack.copyWith(
          //   borderRadius: BorderRadiusStyle.roundedBorder8,
          // ),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/img_rectangle_2552.png',
                // height: 200.v,
                width: 200.0,
              ),
              // CustomImageView(
              //   imagePath: ImageConstant.imgRectangle2552,
              //   height: 200.v,
              //   width: 319.h,
              //   radius: BorderRadius.circular(
              //     4.h,
              //   ),
              // ),
              SizedBox(height: 18.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "AGRAS MG-1S SERIES",
                  // style: CustomTextStyles.titleSmall_1,
                ),
              ),
              SizedBox(height: 18.0),
              Container(
                width: 319.0,
                padding: EdgeInsets.symmetric(vertical: 3.0),
                // decoration: AppDecoration.outlineBlack90001,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Status: ",
                        // style: theme.textTheme.labelLarge,
                      ),
                      TextSpan(
                        text: "Online",
                        // style: CustomTextStyles.labelLargeTeal400_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildStartOTPColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Upcoming Bookings",
          // style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 13.0),
        Container(
          padding: EdgeInsets.all(12.0),
          // decoration: AppDecoration.outlineBlack.copyWith(
          //   borderRadius: BorderRadiusStyle.roundedBorder4,
          // ),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/images/img_frame_black_900_01.svg',
                height: 20.0,
                width: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text('No Upcoming coming bookings.'),
              ),
            ],
          ),
          // child: Column(
          //   mainAxisSize: MainAxisSize.min,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     SizedBox(height: 2.v),
          //     Text(
          //       "AGRAS MG-1S SERIES",
          //       style: CustomTextStyles.titleSmallMedium_3,
          //     ),
          //     SizedBox(height: 6.v),
          //     Padding(
          //       padding: EdgeInsets.only(right: 23.h),
          //       child: Row(
          //         children: [
          //           SizedBox(
          //             width: 107.h,
          //             child: Row(
          //               children: [
          //                 CustomImageView(
          //                   imagePath: ImageConstant.imgFrameGray700,
          //                   height: 20.adaptSize,
          //                   width: 20.adaptSize,
          //                 ),
          //                 Padding(
          //                   padding: EdgeInsets.only(
          //                     left: 4.h,
          //                     top: 2.v,
          //                     bottom: 2.v,
          //                   ),
          //                   child: Text(
          //                     "12th Dec 2023",
          //                     style: CustomTextStyles.bodySmallGray900_1,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //           Padding(
          //             padding: EdgeInsets.only(left: 17.h),
          //             child: SizedBox(
          //               height: 20.v,
          //               child: VerticalDivider(
          //                 width: 1.h,
          //                 thickness: 1.v,
          //               ),
          //             ),
          //           ),
          //           Container(
          //             width: 51.h,
          //             margin: EdgeInsets.only(left: 11.h),
          //             child: Row(
          //               children: [
          //                 CustomImageView(
          //                   imagePath: ImageConstant.imgClock,
          //                   height: 20.adaptSize,
          //                   width: 20.adaptSize,
          //                 ),
          //                 Padding(
          //                   padding: EdgeInsets.only(
          //                     left: 4.h,
          //                     top: 2.v,
          //                     bottom: 2.v,
          //                   ),
          //                   child: Text(
          //                     "11am",
          //                     style: CustomTextStyles.bodySmallGray900_1,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //           Padding(
          //             padding: EdgeInsets.only(left: 13.h),
          //             child: SizedBox(
          //               height: 20.v,
          //               child: VerticalDivider(
          //                 width: 1.h,
          //                 thickness: 1.v,
          //               ),
          //             ),
          //           ),
          //           Container(
          //             width: 83.h,
          //             margin: EdgeInsets.only(left: 11.h),
          //             child: Row(
          //               children: [
          //                 CustomImageView(
          //                   imagePath: ImageConstant.imgLinkedin,
          //                   height: 20.adaptSize,
          //                   width: 20.adaptSize,
          //                 ),
          //                 Padding(
          //                   padding: EdgeInsets.only(
          //                     left: 4.h,
          //                     top: 2.v,
          //                     bottom: 2.v,
          //                   ),
          //                   child: Text(
          //                     "Tolichowki",
          //                     style: CustomTextStyles.bodySmallGray900_1,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //     SizedBox(height: 12.v),
          //     Divider(),
          //     SizedBox(height: 11.v),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Padding(
          //           padding: EdgeInsets.symmetric(vertical: 10.v),
          //           child: Text(
          //             "View Details",
          //             style: CustomTextStyles.labelLargeTeal400,
          //           ),
          //         ),
          //         CustomElevatedButton(
          //           height: 36.v,
          //           width: 114.h,
          //           text: "Start OTP",
          //           buttonStyle: CustomButtonStyles.none,
          //           decoration: CustomButtonStyles
          //               .gradientSecondaryContainerToOnPrimaryTL8Decoration,
          //           buttonTextStyle:
          //               CustomTextStyles.labelLargeOnPrimaryContainer,
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ),
      ],
    );
  }


  ///Handling route based on bottom click actions


  // ///Handling page based on route
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.onboardingThree1Page:
  //       return OnboardingThree1Page();
  //     default:
  //       return DefaultWidget();
  //   }
  // }
}
class MyNavigationBar extends StatefulWidget {
  // MyNavigationBar ({}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar > {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    OnboardingThree1Page(),
    OnboardingEight1Screen(),
    // OnboardingSeventeen1Screen(),
    AcceptBookingPage(),
    RejectBookingPage(),
    // OnboardingSixteen1Screen()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon:ImageIcon(
                  AssetImage('assets/images/Home.png',
                  ) as ImageProvider<Object>?,
                ),
                // title: Text('Home'),
                label: 'Home',
                // backgroundColor: Colors.green
            ),
            BottomNavigationBarItem(

              icon:ImageIcon(
                AssetImage('assets/images/Booking.png') as ImageProvider<Object>?,
              ),
                // title: Text('Search'),
                label: 'Bookings',
                // backgroundColor: Colors.yellow
            ),
            BottomNavigationBarItem(
              icon:ImageIcon(
                AssetImage('assets/images/Payment.png') as ImageProvider<Object>?,
              ),
              // title: Text('Profile'),
              label: 'Payment',
              // backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon:ImageIcon(
                AssetImage('assets/images/More.png') as ImageProvider<Object>?,
              ),
              // title: Text('Profile'),
              label: 'More',
              // backgroundColor: Colors.blue,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xff219994),
          unselectedItemColor: Color(0xff999999),
          unselectedFontSize: 13.0,

          showUnselectedLabels: true,
          iconSize: 40,
          onTap: _onItemTapped,
      ),
    );
  }
}