/*
    @Project: modestnerd
    @Date: 20, September, 2022
    @Author: Ngonidzashe Mangudya
 
    Copyright (c) 2022 ModestNerd
*/
import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:modestnerd/app/view/relative_scale.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          body: Container(
            height: context.height,
            width: context.width,
            padding: EdgeInsets.symmetric(
              horizontal: sx(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'mmmmh 🤔',
                  style: TextStyle(
                    color: const Color(0xFFEF4F00),
                    fontWeight: FontWeight.w600,
                    fontSize: sy(20),
                    fontFamily: 'Poppins',
                  ),
                ),
                Text(
                  'i tried man. screen size is 🤏',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontWeight: FontWeight.w400,
                    fontSize: sy(10),
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
