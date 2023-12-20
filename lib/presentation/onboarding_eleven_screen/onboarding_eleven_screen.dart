import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';
import 'package:flytor/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingElevenScreen extends StatelessWidget {
  const OnboardingElevenScreen({Key? key})
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
              SizedBox(height: 89.v),
              SizedBox(
                height: 319.v,
                width: 250.h,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUntitledArtwork319x250,
                      height: 319.v,
                      width: 250.h,
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgUserTeal400,
                      height: 40.v,
                      width: 65.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 100.v,
                        right: 10.h,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 23.v),
              Text(
                "Your timing & your Service",
                style: CustomTextStyles.titleMediumBlack9000118_1,
              ),
              SizedBox(height: 14.v),
              Container(
                width: 301.h,
                margin: EdgeInsets.only(
                  left: 21.h,
                  right: 20.h,
                ),
                child: Text(
                  "Provide drone service for multiple services and work anytime any day as per your convenience",
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
                    activeDotColor: appTheme.black90001,
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
