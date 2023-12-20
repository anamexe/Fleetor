import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';

// ignore: must_be_immutable
class BookingdetailsItemWidget extends StatelessWidget {
  const BookingdetailsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineBluegray1001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFramePrimary,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(bottom: 24.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 3.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Booking ID: 32332328",
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 7.v),
                Text(
                  "Date: 12th Nov 23",
                  style: CustomTextStyles.bodySmallGray700,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
            child: Column(
              children: [
                Text(
                  "₹ 3,000",
                  style: CustomTextStyles.titleSmall_1,
                ),
                SizedBox(height: 6.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Cash",
                    style: CustomTextStyles.labelLargeGray900,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
