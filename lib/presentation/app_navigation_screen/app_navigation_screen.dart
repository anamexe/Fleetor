import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Nine",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingNineScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Eleven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingElevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Fourteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingFourteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Eight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Fifteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingFifteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Seventeen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingSeventeenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Sixteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingSixteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Thirteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingThirteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Twelve",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingTwelveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Eighteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingEighteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Ten",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingTenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Twelve",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingTwelve1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Three - Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.onboardingThreeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingOne1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Eighteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingEighteen1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboarding1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Fifteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingFifteen1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Seventeen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingSeventeen1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Eight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingEight1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Thirteen - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.onboardingThirteenTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Two - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.onboardingTwoTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Sixteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingSixteen1Screen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
