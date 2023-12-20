import '../onboarding_five1_bottomsheet/widgets/viewhierarchylist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';
import 'package:flytor/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class OnboardingFive1Bottomsheet extends StatelessWidget {
  const OnboardingFive1Bottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Text(
                "AGRAS MG-1S SERIES: Booking",
                style: CustomTextStyles.titleMediumOnErrorContainerBold,
              ),
            ),
          ),
          SizedBox(height: 26.v),
          Divider(),
          SizedBox(height: 17.v),
          _buildPriceRow(context),
          SizedBox(height: 10.v),
          _buildViewHierarchyList(context),
          SizedBox(height: 9.v),
          Divider(
            indent: 24.h,
            endIndent: 24.h,
          ),
          SizedBox(height: 23.v),
          CustomElevatedButton(
            text: "Accept",
            margin: EdgeInsets.symmetric(horizontal: 24.h),
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientPrimaryToGrayTL81Decoration,
          ),
          SizedBox(height: 24.v),
          Divider(
            color: appTheme.gray10002,
          ),
          SizedBox(height: 31.v),
          Text(
            "Reject Service",
            style: CustomTextStyles.titleMediumPrimaryContainer,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPriceRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Price",
            style: theme.textTheme.bodySmall,
          ),
          Text(
            "₹ 8000",
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchyList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 10.v,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return ViewhierarchylistItemWidget();
        },
      ),
    );
  }
}
