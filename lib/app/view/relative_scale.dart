import 'package:flutter/material.dart';

typedef RelativeBuilderFunction = Widget Function(
  BuildContext,
  double,
  double,
  double Function(double),
  double Function(double),
);

class RelativeBuilder extends StatefulWidget {
  const RelativeBuilder({super.key, required this.builder});

  final RelativeBuilderFunction builder;

  @override
  State<RelativeBuilder> createState() => _RelativeBuilderState();
}

class _RelativeBuilderState extends State<RelativeBuilder> {
  Size get _size {
    return MediaQuery.of(context).size;
  }

  double get _screenHeight => _size.height;
  double get _screenWidth => _size.width;

  double sx(double value) {
    return (_screenHeight * _calculate(value)).roundToDouble();
  }

  double sy(double value) {
    return (_screenWidth * _calculate(value)).roundToDouble();
  }

  double _calculate(double value) {
    return (value / 100) / 5.333333333333333;
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(
      context,
      _screenHeight,
      _screenWidth,
      sy,
      sx,
    );
  }
}
