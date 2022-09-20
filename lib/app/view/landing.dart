/*
    @Project: modestnerd
    @Date: 20, September, 2022
    @Author: Ngonidzashe Mangudya
 
    Copyright (c) 2022 ModestNerd
*/
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:modestnerd/app/view/relative_scale.dart';
import 'package:modestnerd/app/view/tooltip_span.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

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
              horizontal: sx(200),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: "Hi human! We're ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: sy(16.5),
                      fontFamily: 'Poppins',
                    ),
                    children: [
                      TooltipSpan(
                        message: 'Bunch of Gloried Typists',
                        inlineSpan: TextSpan(
                          text: 'ModestNerd Developers',
                          style: TextStyle(
                            color: const Color(0xFFEF4F00),
                            fontWeight: FontWeight.w600,
                            fontSize: sy(16.5),
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      TextSpan(
                        text: ' based in Harare, Zimbabwe.',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: sy(16.5),
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: sy(10),
                ),
                RichText(
                  text: TextSpan(
                    text:
                        'We are able to assist both small and large businesses'
                        ' in developing ground-breaking products that aid '
                        'in their ability to expand, innovate, change,'
                        ' and maintain a competitive advantage by combining'
                        ' our technical expertise and information gathered '
                        'over many years in the IT industry. Our primary '
                        'focus is on creating products with stunning user '
                        'interfaces and high performance.',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontWeight: FontWeight.w300,
                      fontSize: sy(6),
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                SizedBox(
                  height: sy(20),
                ),
                Divider(
                  color: Colors.white.withOpacity(0.8),
                ),
                SizedBox(
                  height: sy(5),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '© ${DateTime.now().year} ModestNerd Developers.'
                      ' All rights reserved.',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    Tooltip(
                      message: "Let's Connect Via Email",
                      child: GestureDetector(
                        onTap: () {
                          window.open(
                            'mailto:iamngoni@modestnerd.co?bcc=imngonii@gmail.com',
                            'new tab',
                          );
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.mail_outline,
                              color: const Color(0xFFEF4F00).withOpacity(0.7),
                              size: sy(10),
                            ),
                            SizedBox(
                              width: sx(5),
                            ),
                            Text(
                              'Get In Touch',
                              style: TextStyle(
                                color: const Color(0xFFEF4F00).withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
