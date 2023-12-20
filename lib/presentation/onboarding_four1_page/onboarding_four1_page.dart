import '../onboarding_four1_page/widgets/bookingdetails_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';
import 'package:flytor/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class OnboardingFour1Page extends StatefulWidget {
  const OnboardingFour1Page({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingFour1PageState createState() => OnboardingFour1PageState();
}

class OnboardingFour1PageState extends State<OnboardingFour1Page>
    with AutomaticKeepAliveClientMixin<OnboardingFour1Page> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              _buildFilter(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFilter(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          CustomOutlinedButton(
            width: 74.h,
            text: "Filter",
            leftIcon: Container(
              margin: EdgeInsets.only(right: 5.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgFrame6,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
            ),
            alignment: Alignment.centerRight,
          ),
          SizedBox(height: 12.v),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 16.v,
              );
            },
            itemCount: 6,
            itemBuilder: (context, index) {
              return BookingdetailsItemWidget();
            },
          ),
        ],
      ),
    );
  }
}
