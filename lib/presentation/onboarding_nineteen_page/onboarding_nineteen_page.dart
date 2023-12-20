import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';
import 'package:flytor/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class OnboardingNineteenPage extends StatefulWidget {
  const OnboardingNineteenPage({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingNineteenPageState createState() => OnboardingNineteenPageState();
}

class OnboardingNineteenPageState extends State<OnboardingNineteenPage>
    with AutomaticKeepAliveClientMixin<OnboardingNineteenPage> {
  TextEditingController paymentStatusController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              _buildBookingStatus(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentStatus(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.h),
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
                  child: _buildBookingID(
                    context,
                    bookingId: "Booking ID: 32332328",
                    bookingDate: "Booking date: 12th Nov 23",
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowUp,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(bottom: 36.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Divider(),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: _buildTotalNoHours(
              context,
              totalNoHoursText: "Drone Category",
              hText: "Videography",
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: _buildTotalNoHours(
              context,
              totalNoHoursText: "Total no hours",
              hText: "4h",
            ),
          ),
          SizedBox(height: 14.v),
          Divider(),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: _buildTotalNoHours(
              context,
              totalNoHoursText: "Customer Name",
              hText: "Rohit Sharma",
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: _buildTotalNoHours(
              context,
              totalNoHoursText: "Contact Number",
              hText: "9373747371",
            ),
          ),
          SizedBox(height: 12.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text(
                "Service Location",
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 294.h,
              margin: EdgeInsets.only(
                left: 8.h,
                right: 25.h,
              ),
              child: Text(
                "8-1-329/C, Koh E Sar Colony, Brindavan Colony, Toli Chowki, Hyderabad, Telangana 500008",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall!.copyWith(
                  height: 1.67,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Divider(),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: _buildTotalNoHours(
              context,
              totalNoHoursText: "Payment Mode",
              hText: "Online",
            ),
          ),
          SizedBox(height: 12.v),
          SizedBox(
            height: 30.v,
            width: 323.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomTextFormField(
                  width: 323.h,
                  controller: paymentStatusController,
                  hintText: "Payment Status",
                  hintStyle: theme.textTheme.bodySmall!,
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.bottomCenter,
                  contentPadding: EdgeInsets.symmetric(horizontal: 4.h),
                  borderDecoration: TextFormFieldStyleHelper.underLineBlueGray,
                  filled: false,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Paid",
                    style: CustomTextStyles.labelLargePrimary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: _buildTotalNoHours(
              context,
              totalNoHoursText: "Total Amount",
              hText: "₹ 3,000",
            ),
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookingStatus(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          _buildPaymentStatus(context),
          SizedBox(height: 16.v),
          _buildBookingID1(
            context,
            bookingId: "Booking ID: 32332328",
            bookingDate: "Booking date: 12th Nov 23",
          ),
          SizedBox(height: 16.v),
          _buildBookingID1(
            context,
            bookingId: "Booking ID: 32332328",
            bookingDate: "Booking date: 12th Nov 23",
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTotalNoHours(
    BuildContext context, {
    required String totalNoHoursText,
    required String hText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          totalNoHoursText,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.black90001,
          ),
        ),
        Text(
          hText,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.black90001,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildBookingID(
    BuildContext context, {
    required String bookingId,
    required String bookingDate,
  }) {
    return Column(
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
    );
  }

  /// Common widget
  Widget _buildBookingID1(
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
