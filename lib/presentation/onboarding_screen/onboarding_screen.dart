import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';
import 'package:flytor/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key})
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
                height: 329.v,
                width: 250.h,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUntitledArtwork,
                      height: 329.v,
                      width: 250.h,
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgUser,
                      height: 40.v,
                      width: 65.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 119.v,
                        right: 10.h,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.v),
              Text(
                "Earn Money",
                style: CustomTextStyles.titleMediumBlack9000118_1,
              ),
              SizedBox(height: 14.v),
              Container(
                width: 308.h,
                margin: EdgeInsets.symmetric(horizontal: 17.h),
                child: Text(
                  "Deliver drone services & make money by working with verified users in specific locations.",
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
                    dotColor: theme.colorScheme.onPrimaryContainer,
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
