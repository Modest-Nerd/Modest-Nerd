/*
    @Project: modestnerd
    @Date: 20, September, 2022
    @Author: Ngonidzashe Mangudya
 
    Copyright (c) 2022 ModestNerd
*/
import 'package:flutter/material.dart';

class TooltipSpan extends WidgetSpan {
  TooltipSpan({
    required String message,
    required InlineSpan inlineSpan,
  }) : super(
          child: Tooltip(
            message: message,
            child: Text.rich(
              inlineSpan,
            ),
          ),
        );
}
