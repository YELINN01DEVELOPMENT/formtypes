import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../global_import.dart';

double kDefaultBorderRadius = 10;
// double kCustomToolbarHeight = 42;
double get kWidth => 100.w;
double get kHeight => 100.h;
bool get kIsTablet => SizerUtil.deviceType == DeviceType.tablet;
bool get kIsSmall => kHeight<=568;
bool get kIsMedium => kHeight<=667;
double get kTextTitleFontSize => kIsSmall?11:kIsMedium?13:15;
double get kCaptionFontSize => kIsTablet?14: (kIsSmall?8:kIsMedium?10:12);
double get kBodyTextSize => kIsTablet? 20 :(kIsSmall?10:kIsMedium?12:14);
double get kSubTitleTextSize =>kIsTablet? 25 :( kIsSmall?11:kIsMedium?14:15);


double get kTitleTextSize => kIsTablet? 30 :(kIsSmall?15:kIsMedium?17:19);
double get kButtonTextSize =>kIsTablet? 25 :( kIsSmall?13:kIsMedium?15:17);

double get kH6TextSize => kIsTablet? 35 :(kIsSmall?20:kIsMedium?22:24);
// double get kScreenPadding => kIsSmall?7:kIsMedium?10:15;
double get kScreenPadding => kIsSmall?8:kIsMedium?10:15;
// double get kScreenHeight => 100.h - (kCustomToolbarHeight+kBottomNavBarHeight+LoadingScreenState.paddingBottom+LoadingScreenState.paddingTop);
// double get kScreenHeight => 100.h - (kToolbarHeight+kBottomNavBarHeight+LoadingScreenState.paddingBottom+LoadingScreenState.paddingTop);
// double get kHeightWithoutPadding => 100.h -(LoadingScreenState.paddingBottom+LoadingScreenState.paddingTop);
// double get kHeightNoBot => 100.h -(kToolbarHeight+LoadingScreenState.paddingBottom+LoadingScreenState.paddingTop);
// double get kHeightNoAllBot => 100.h -(kToolbarHeight+LoadingScreenState.paddingTop);

//var height = (kScreenHeight * 0.85) - (kScreenPadding * 2);
//var walletItemSize = (height + (((height / 3) * 0.3) * 2)) / 3;
