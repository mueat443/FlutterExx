import 'package:flutter/material.dart';

class ChmRadioButtonModel {
  String value;
  String title;
  String? subtitle;

  /// for case widget
  Widget? customText;
  bool isDisable;
  String? image;
  bool isChecked;
  Widget? imageWidget;
  TextStyle? titleTextStyle;
  TextStyle? subTitleTextStyle;
  Function? trackFunction;
  bool? isSubTitleMaxLines3;

  ChmRadioButtonModel({
    required this.value,
    required this.title,
    this.subtitle,
    this.customText,
    required this.isDisable,
    this.image,
    required this.isChecked,
    this.imageWidget,
    this.titleTextStyle,
    this.subTitleTextStyle,
    this.trackFunction,
    this.isSubTitleMaxLines3 = false,
  });
}
