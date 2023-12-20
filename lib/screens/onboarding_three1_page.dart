import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flytor/screens/accept_booking_page.dart';
import 'package:flytor/screens/reject_booking_page.dart';


// ignore_for_file: must_be_immutable
class OnboardingThree1Page extends StatelessWidget {
  OnboardingThree1Page({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  TextEditingController noUpcomingBookingsController = TextEditingController();

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
        // bottomNavigationBar: MyNavigationBar(),
      ),
    );
  }

  Widget _buildGoOnlineRow(BuildContext context) {
    var switchValue=false;
    return InkWell(
      onTap: (){
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          // isScrollControlled: true,
          context: context,
          builder: (ctx) => RejectBookingPage(),
        );
      },
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffF0F9FD),
          // color: Color(0xffcbeceb),
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
      ),
    );
  }

  Widget _buildGoOnlineYellow(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: Color(0xffFFFBF5),
      ),
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
            padding: EdgeInsets.only(left: 8.0, bottom: 9.0, top: 9.0,right: 8.0),
            child: Text(
              "Please go online to start your service.....dsdsds complete the content",
              style: TextStyle(
                  fontFamily: 'InterLight',
                  fontWeight: FontWeight.w400,
                  fontSize: 10),
              // style: theme.textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }

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
          color: Color(0xffffffff),
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
        // Container(
        //   padding: EdgeInsets.symmetric(
        //     horizontal: 12.h,
        //     vertical: 16.v,
        //   ),
        //   // padding: EdgeInsets.only(top: 0,bottom: 16.v,left: 12.h,right:12.h ),
        //   decoration: AppDecoration.outlineBlack.copyWith(
        //     borderRadius: BorderRadiusStyle.roundedBorder8,
        //   ),
        //   child: Column(
        //     // mainAxisSize: MainAxisSize.min,
        //     children: [
        //       Container(
        //         child: Image.asset(
        //           'assets/images/img_rectangle_2552.png',
        //           height: 200.v,
        //           width: 500.h,
        //           fit: BoxFit.fill,
        //         ),
        //         decoration:
        //             BoxDecoration(borderRadius: BorderRadius.circular(70.v)),
        //       ),
        //       // CustomImageView(
        //       //   imagePath: ImageConstant.imgRectangle2552,
        //       //   height: 200.v,
        //       //   width: 319.h,
        //       //   radius: BorderRadius.circular(
        //       //     4.h,
        //       //   ),
        //       // ),
        //       SizedBox(height: 18.v),
        //       Align(
        //         alignment: Alignment.centerLeft,
        //         child: Text(
        //           "AGRAS MG-1S SERIES",
        //           style: CustomTextStyles.titleSmall_1,
        //         ),
        //       ),
        //       SizedBox(height: 18.v),
        //       Container(
        //         width: 319.h,
        //         padding: EdgeInsets.symmetric(vertical: 3.v),
        //         decoration: AppDecoration.outlineBlack90001,
        //         child: RichText(
        //           text: TextSpan(
        //             children: [
        //               TextSpan(
        //                 text: "Status: ",
        //                 style: theme.textTheme.labelLarge,
        //               ),
        //               TextSpan(
        //                 text: "Online",
        //                 style: CustomTextStyles.labelLargeTeal400_1,
        //               ),
        //             ],
        //           ),
        //           textAlign: TextAlign.left,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }

  Widget _buildStartOTPColumn(BuildContext context) {
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
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
               // barrierColor: Colors.black,
               //  backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                // isScrollControlled: true,
                context: context,
                builder: (ctx) => AcceptBookingPage(),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/img_frame_black_900_01.svg',
                    height: 16.0,
                    width: 16.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text('No Upcoming coming bookings.',
                        style: TextStyle(
                            fontFamily: 'InterLight',
                            fontWeight: FontWeight.w400,
                            fontSize: 12.0)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

}
