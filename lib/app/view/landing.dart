/*
    @Project: modestnerd
    @Date: 20, September, 2022
    @Author: Ngonidzashe Mangudya
 
    Copyright (c) 2022 ModestNerd
*/
import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:modestnerd/app/view/extra_large_screen.dart';
import 'package:modestnerd/app/view/large_screen.dart';
import 'package:modestnerd/app/view/normal_screen.dart';
import 'package:modestnerd/app/view/screen_size.dart';
import 'package:modestnerd/app/view/small_screen.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  ScreenSize getSize(BuildContext context) {
    final deviceWidth = context.width;
    if (deviceWidth > 878) return ScreenSize.ExtraLarge;
    if (deviceWidth > 513) return ScreenSize.Large;
    if (deviceWidth > 300) return ScreenSize.Normal;
    return ScreenSize.Small;
  }

  @override
  Widget build(BuildContext context) {
    switch (getSize(context)) {
      case ScreenSize.Small:
        return const SmallScreen();
      case ScreenSize.Normal:
        debugPrint('Normal Screen');
        return const NormalScreen();
      case ScreenSize.Large:
        debugPrint('Large Screen');
        return const LargeScreen();
      case ScreenSize.ExtraLarge:
        debugPrint('Extra Large Screen');
        return const ExtraLargeScreen();
    }

    debugPrint('Returning default view');
    return const SizedBox.shrink();
  }
}
