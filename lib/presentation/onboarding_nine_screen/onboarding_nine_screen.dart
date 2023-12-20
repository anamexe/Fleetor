import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';
import 'package:flytor/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingNineScreen extends StatelessWidget {
  const OnboardingNineScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 24.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 70.v),
              SizedBox(
                height: 330.v,
                width: 250.h,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImg08312,
                      height: 330.v,
                      width: 250.h,
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPlay,
                      height: 65.v,
                      width: 40.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 106.v,
                        right: 22.h,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 31.v),
              Text(
                "Welcome to Flytor",
                style: CustomTextStyles.titleMediumBlack9000118_1,
              ),
              SizedBox(height: 14.v),
              Container(
                width: 324.h,
                margin: EdgeInsets.symmetric(horizontal: 9.h),
                child: Text(
                  "Join the Flytor App to provide drone services in a variety of industries.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Spacer(),
              CustomElevatedButton(
                text: "Next",
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles.gradientPrimaryToGrayTL81Decoration,
              ),
              SizedBox(height: 24.v),
              SizedBox(
                height: 11.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 4,
                    dotColor: appTheme.black90001,
                    dotHeight: 11.v,
                    dotWidth: 11.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
