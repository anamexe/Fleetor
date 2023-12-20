import 'package:flutter/material.dart';import 'package:flytor/core/app_export.dart';import 'package:flytor/presentation/onboarding_ten1_page/onboarding_ten1_page.dart';import 'package:flytor/widgets/app_bar/appbar_leading_image.dart';import 'package:flytor/widgets/app_bar/appbar_subtitle_one.dart';import 'package:flytor/widgets/app_bar/custom_app_bar.dart';class OnboardingTwoTabContainerScreen extends StatefulWidget {const OnboardingTwoTabContainerScreen({Key? key}) : super(key: key);

@override OnboardingTwoTabContainerScreenState createState() =>  OnboardingTwoTabContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class OnboardingTwoTabContainerScreenState extends State<OnboardingTwoTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 8.v), _buildTabview(context), SizedBox(height: 662.v, child: TabBarView(controller: tabviewController, children: [OnboardingTen1Page(), OnboardingTen1Page(), OnboardingTen1Page()]))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 54.v, leadingWidth: 36.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowdown, margin: EdgeInsets.only(left: 16.h, top: 17.v, bottom: 17.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitleOne(text: "Payment History", margin: EdgeInsets.only(left: 4.h))); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 44.v, width: 343.h, decoration: BoxDecoration(color: appTheme.teal400.withOpacity(0.1), borderRadius: BorderRadius.circular(4.h), border: Border.all(color: appTheme.teal400, width: 1.h)), child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: appTheme.gray10001, labelStyle: TextStyle(fontSize: 12.fSize, fontFamily: 'Inter', fontWeight: FontWeight.w500), unselectedLabelColor: theme.colorScheme.errorContainer, unselectedLabelStyle: TextStyle(fontSize: 12.fSize, fontFamily: 'Inter', fontWeight: FontWeight.w500), indicator: BoxDecoration(color: appTheme.teal400, borderRadius: BorderRadius.horizontal(left: Radius.circular(4.h))), tabs: [Tab(child: Text("All")), Tab(child: Text("Received")), Tab(child: Text("Pending"))])); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
