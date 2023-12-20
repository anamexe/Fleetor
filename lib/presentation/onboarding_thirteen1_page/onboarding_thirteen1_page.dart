import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';

// ignore_for_file: must_be_immutable
class OnboardingThirteen1Page extends StatefulWidget {
  const OnboardingThirteen1Page({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingThirteen1PageState createState() => OnboardingThirteen1PageState();
}

class OnboardingThirteen1PageState extends State<OnboardingThirteen1Page>
    with AutomaticKeepAliveClientMixin<OnboardingThirteen1Page> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      _buildBookingDetails(
                        context,
                        bookingId: "Booking ID: 32332328",
                        bookingDate: "Booking date: 12th Nov 23",
                      ),
                      SizedBox(height: 16.v),
                      _buildBookingDetails(
                        context,
                        bookingId: "Booking ID: 32332328",
                        bookingDate: "Booking date: 12th Nov 23",
                      ),
                      SizedBox(height: 16.v),
                      _buildBookingDetails(
                        context,
                        bookingId: "Booking ID: 32332328",
                        bookingDate: "Booking date: 12th Nov 23",
                      ),
                      SizedBox(height: 16.v),
                      _buildBookingDetails(
                        context,
                        bookingId: "Booking ID: 32332328",
                        bookingDate: "Booking date: 12th Nov 23",
                      ),
                      SizedBox(height: 16.v),
                      _buildBookingDetails(
                        context,
                        bookingId: "Booking ID: 32332328",
                        bookingDate: "Booking date: 12th Nov 23",
                      ),
                      SizedBox(height: 16.v),
                      _buildBookingDetails(
                        context,
                        bookingId: "Booking ID: 32332328",
                        bookingDate: "Booking date: 12th Nov 23",
                      ),
                      SizedBox(height: 16.v),
                      _buildBookingDetails(
                        context,
                        bookingId: "Booking ID: 32332328",
                        bookingDate: "Booking date: 12th Nov 23",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildBookingDetails(
    BuildContext context, {
    required String bookingId,
    required String bookingDate,
  }) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle2565,
            height: 56.v,
            width: 59.h,
            radius: BorderRadius.circular(
              2.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 7.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bookingId,
                  style: CustomTextStyles.labelLargeBlack900.copyWith(
                    color: appTheme.black900,
                  ),
                ),
                SizedBox(height: 11.v),
                Text(
                  bookingDate,
                  style: CustomTextStyles.bodySmallBlack900.copyWith(
                    color: appTheme.black900,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowdown,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(bottom: 36.v),
          ),
        ],
      ),
    );
  }
}
