import 'package:flutter/material.dart';
import 'package:flytor/presentation/onboarding_nine_screen/onboarding_nine_screen.dart';
import 'package:flytor/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:flytor/presentation/onboarding_eleven_screen/onboarding_eleven_screen.dart';
import 'package:flytor/presentation/onboarding_fourteen_screen/onboarding_fourteen_screen.dart';
import 'package:flytor/presentation/onboarding_eight_screen/onboarding_eight_screen.dart';
import 'package:flytor/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:flytor/presentation/onboarding_five_screen/onboarding_five_screen.dart';
import 'package:flytor/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:flytor/presentation/onboarding_four_screen/onboarding_four_screen.dart';
import 'package:flytor/presentation/onboarding_fifteen_screen/onboarding_fifteen_screen.dart';
import 'package:flytor/presentation/onboarding_seventeen_screen/onboarding_seventeen_screen.dart';
import 'package:flytor/presentation/onboarding_six_screen/onboarding_six_screen.dart';
import 'package:flytor/presentation/onboarding_sixteen_screen/onboarding_sixteen_screen.dart';
import 'package:flytor/presentation/onboarding_seven_screen/onboarding_seven_screen.dart';
import 'package:flytor/presentation/onboarding_thirteen_screen/onboarding_thirteen_screen.dart';
import 'package:flytor/presentation/onboarding_twelve_screen/onboarding_twelve_screen.dart';
import 'package:flytor/presentation/onboarding_eighteen_screen/onboarding_eighteen_screen.dart';
import 'package:flytor/presentation/onboarding_ten_screen/onboarding_ten_screen.dart';
import 'package:flytor/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:flytor/presentation/onboarding_twelve1_screen/onboarding_twelve1_screen.dart';
import 'package:flytor/presentation/onboarding_three_container_screen/onboarding_three_container_screen.dart';
import 'package:flytor/screens/onboarding_one1_screen.dart';
import 'package:flytor/presentation/onboarding_eighteen1_screen/onboarding_eighteen1_screen.dart';
import 'package:flytor/presentation/onboarding1_screen/onboarding1_screen.dart';
import 'package:flytor/presentation/onboarding_fifteen1_screen/onboarding_fifteen1_screen.dart';
import 'package:flytor/presentation/onboarding_seventeen1_screen/onboarding_seventeen1_screen.dart';
import 'package:flytor/screens/onboarding_eight1_screen.dart';
import 'package:flytor/presentation/onboarding_thirteen_tab_container_screen/onboarding_thirteen_tab_container_screen.dart';
import 'package:flytor/presentation/onboarding_two_tab_container_screen/onboarding_two_tab_container_screen.dart';
import 'package:flytor/screens/onboarding_sixteen1_screen.dart';
import 'package:flytor/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardingNineScreen = '/onboarding_nine_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String onboardingElevenScreen = '/onboarding_eleven_screen';

  static const String onboardingFourteenScreen = '/onboarding_fourteen_screen';

  static const String onboardingEightScreen = '/onboarding_eight_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingFiveScreen = '/onboarding_five_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String onboardingFourScreen = '/onboarding_four_screen';

  static const String onboardingFifteenScreen = '/onboarding_fifteen_screen';

  static const String onboardingSeventeenScreen =
      '/onboarding_seventeen_screen';

  static const String onboardingSixScreen = '/onboarding_six_screen';

  static const String onboardingSixteenScreen = '/onboarding_sixteen_screen';

  static const String onboardingSevenScreen = '/onboarding_seven_screen';

  static const String onboardingThirteenScreen = '/onboarding_thirteen_screen';

  static const String onboardingTwelveScreen = '/onboarding_twelve_screen';

  static const String onboardingEighteenScreen = '/onboarding_eighteen_screen';

  static const String onboardingTenScreen = '/onboarding_ten_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingTwelve1Screen = '/onboarding_twelve1_screen';

  static const String onboardingThree1Page = '/onboarding_three1_page';

  static const String onboardingThreeContainerScreen =
      '/onboarding_three_container_screen';

  static const String onboardingOne1Screen = '/onboarding_one1_screen';

  static const String onboardingEighteen1Screen =
      '/onboarding_eighteen1_screen';

  static const String onboarding1Screen = '/onboarding1_screen';

  static const String onboardingFifteen1Screen = '/onboarding_fifteen1_screen';

  static const String onboardingSeventeen1Screen =
      '/onboarding_seventeen1_screen';

  static const String onboardingEight1Screen = '/onboarding_eight1_screen';

  static const String onboardingThirteen1Page = '/onboarding_thirteen1_page';

  static const String onboardingThirteenTabContainerScreen =
      '/onboarding_thirteen_tab_container_screen';

  static const String onboardingNineteenPage = '/onboarding_nineteen_page';

  static const String onboardingFour1Page = '/onboarding_four1_page';

  static const String onboardingTen1Page = '/onboarding_ten1_page';

  static const String onboardingTwo1Page = '/onboarding_two1_page';

  static const String onboardingTwoTabContainerScreen =
      '/onboarding_two_tab_container_screen';

  static const String onboardingSixteen1Screen = '/onboarding_sixteen1_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    onboardingNineScreen: (context) => OnboardingNineScreen(),
    onboardingScreen: (context) => OnboardingScreen(),
    onboardingElevenScreen: (context) => OnboardingElevenScreen(),
    onboardingFourteenScreen: (context) => OnboardingFourteenScreen(),
    onboardingEightScreen: (context) => OnboardingEightScreen(),
    onboardingOneScreen: (context) => OnboardingOneScreen(),
    onboardingFiveScreen: (context) => OnboardingFiveScreen(),
    onboardingThreeScreen: (context) => OnboardingThreeScreen(),
    onboardingFourScreen: (context) => OnboardingFourScreen(),
    onboardingFifteenScreen: (context) => OnboardingFifteenScreen(),
    onboardingSeventeenScreen: (context) => OnboardingSeventeenScreen(),
    onboardingSixScreen: (context) => OnboardingSixScreen(),
    onboardingSixteenScreen: (context) => OnboardingSixteenScreen(),
    onboardingSevenScreen: (context) => OnboardingSevenScreen(),
    onboardingThirteenScreen: (context) => OnboardingThirteenScreen(),
    onboardingTwelveScreen: (context) => OnboardingTwelveScreen(),
    onboardingEighteenScreen: (context) => OnboardingEighteenScreen(),
    onboardingTenScreen: (context) => OnboardingTenScreen(),
    onboardingTwoScreen: (context) => OnboardingTwoScreen(),
    onboardingTwelve1Screen: (context) => OnboardingTwelve1Screen(),
    onboardingThreeContainerScreen: (context) =>
        OnboardingThreeContainerScreen(),
    onboardingOne1Screen: (context) => OnboardingOne1Screen(),
    onboardingEighteen1Screen: (context) => OnboardingEighteen1Screen(),
    onboarding1Screen: (context) => Onboarding1Screen(),
    onboardingFifteen1Screen: (context) => OnboardingFifteen1Screen(),
    onboardingSeventeen1Screen: (context) => OnboardingSeventeen1Screen(),
    onboardingEight1Screen: (context) => OnboardingEight1Screen(),
    onboardingThirteenTabContainerScreen: (context) =>
        OnboardingThirteenTabContainerScreen(),
    onboardingTwoTabContainerScreen: (context) =>
        OnboardingTwoTabContainerScreen(),
    onboardingSixteen1Screen: (context) => OnboardingSixteen1Screen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
