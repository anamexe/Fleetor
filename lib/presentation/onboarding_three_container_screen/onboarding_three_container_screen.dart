import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';
import 'package:flytor/screens/onboarding_three1_page.dart';
import 'package:flytor/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class OnboardingThreeContainerScreen extends StatelessWidget {
  OnboardingThreeContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.onboardingThree1Page,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.onboardingThree1Page;
      case BottomBarEnum.Bookings:
        return "/";
      case BottomBarEnum.Payment:
        return "/";
      case BottomBarEnum.More:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.onboardingThree1Page:
        return OnboardingThree1Page();
      default:
        return DefaultWidget();
    }
  }
}
