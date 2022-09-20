/*
    @Project: modestnerd
    @Date: 20, September, 2022
    @Author: Ngonidzashe Mangudya
 
    Copyright (c) 2022 ModestNerd
*/
import 'package:flutter/material.dart';
import 'package:modestnerd/app/view/relative_scale.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          body: Container(
            height: height,
            width: width,
            padding: EdgeInsets.symmetric(
              horizontal: sx(40),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi human!",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: sy(20),
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
