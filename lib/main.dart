import 'package:flytor/screens/onboarding_one1_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:flytor/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:flytor/presentation/onboarding1_screen/onboarding1_screen.dart';
import 'package:flytor/screens/onboarding_eight1_screen.dart';
import 'package:flytor/presentation/onboarding_eighteen1_screen/onboarding_eighteen1_screen.dart';
import 'package:flytor/presentation/onboarding_eighteen_screen/onboarding_eighteen_screen.dart';
import 'package:flytor/presentation/onboarding_fifteen1_screen/onboarding_fifteen1_screen.dart';
import 'package:flytor/screens/onboarding_one1_screen.dart';
import 'package:flytor/presentation/onboarding_seven_screen/onboarding_seven_screen.dart';
import 'package:flytor/presentation/onboarding_seventeen1_screen/onboarding_seventeen1_screen.dart';
import 'package:flytor/presentation/onboarding_seventeen_screen/onboarding_seventeen_screen.dart';
import 'package:flytor/presentation/onboarding_six_screen/onboarding_six_screen.dart';
import 'package:flytor/screens/onboarding_sixteen1_screen.dart';
import 'package:flytor/presentation/onboarding_sixteen_screen/onboarding_sixteen_screen.dart';
import 'package:flytor/presentation/onboarding_ten_screen/onboarding_ten_screen.dart';
import 'package:flytor/presentation/onboarding_thirteen_screen/onboarding_thirteen_screen.dart';
import 'package:flytor/presentation/onboarding_thirteen_tab_container_screen/onboarding_thirteen_tab_container_screen.dart';
import 'package:flytor/screens/onboarding_three1_page.dart';
import 'package:flytor/presentation/onboarding_three_container_screen/onboarding_three_container_screen.dart';
import 'package:flytor/presentation/onboarding_twelve1_screen/onboarding_twelve1_screen.dart';
import 'package:flytor/presentation/onboarding_twelve_screen/onboarding_twelve_screen.dart';
import 'package:flytor/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:flytor/presentation/onboarding_two_tab_container_screen/onboarding_two_tab_container_screen.dart';
import 'package:flytor/screens/reject_booking_page.dart';
import 'package:flytor/theme/theme_helper.dart';
// import 'package:flytor/theme/themes.dart.dart';
import 'package:flytor/routes/app_routes.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {


  ///Please update theme as per your need if required.
  // ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      // theme: ThemeData().copyWith(
      //     useMaterial3: true,
      //     colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 63, 17, 177))
      // ),
      title: 'flytor',
      debugShowCheckedModeBanner: false,
      // initialRoute: AppRoutes.onboardingNineScreen,
      // routes: AppRoutes.routes,
      home: OnboardingOne1Screen(),
      // home: OnboardingThree1Page(),
      // home: OnboardingEight1Screen(),
    );
  }
}
