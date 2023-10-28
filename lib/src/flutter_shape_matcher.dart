// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_shape_matcher/src/constants/styles.dart';
import 'widget/shapedrag_widget.dart';

class ShapeMatcher extends StatelessWidget {
  final Function()? onSuccess;
  final Function()? onFailure;
  String title;
  String subtitle;
  double titleFontSize;
  double messageFontSize;
  Color titleColor;
  Color messageColor;
  Color backgroundColor;
  Color borderColor;
  double borderWidth;
  double borderRadius;
  Color dragAcceptBoxColor;
  Color dragAcceptBoxBorderColor;
  double dragAcceptBoxBorderSize;
  Color dragAcceptShapeColor;
  int animationDurationInMilliseconds;

  ShapeMatcher({
    Key? key,
    required this.onSuccess,
    required this.onFailure,
    this.title = 'Match the Shape',
    this.subtitle = 'Drag the correct shape into above box',
    this.titleFontSize = 24,
    this.messageFontSize = 16,
    this.titleColor = kBlueGradientColor,
    this.messageColor = kWhiteColor,
    this.backgroundColor = kBlackColor,
    this.borderColor = kTextLabelColor,
    this.borderWidth = 2,
    this.borderRadius = 12,
    this.dragAcceptBoxColor = kGrayColor,
    this.dragAcceptBoxBorderColor = kGrayColor,
    this.dragAcceptBoxBorderSize = 1,
    this.dragAcceptShapeColor = kLightGrayColor,
    this.animationDurationInMilliseconds = 2000,
  });

  @override
  Widget build(BuildContext context) => ShapeDragWidget(
        title: title,
        subtitle: subtitle,
        titleFontSize: titleFontSize,
        messageFontSize: messageFontSize,
        titleColor: titleColor,
        messageColor: messageColor,
        backgroundColor: backgroundColor,
        borderColor: borderColor,
        borderWidth: borderWidth,
        borderRadius: borderRadius,
        dragAcceptBoxColor: dragAcceptBoxColor,
        dragAcceptBoxBorderColor: dragAcceptBoxBorderColor,
        dragAcceptBoxBorderSize: dragAcceptBoxBorderSize,
        dragAcceptShapeColor: dragAcceptShapeColor,
        animationDurationInMilliseconds: animationDurationInMilliseconds,
        onSuccess: () {
          debugPrint('openParentalGate onSuccess');
          if (onSuccess != null) onSuccess!();
        },
        onFailure: () {
          debugPrint('openParentalGate onFailure');
          if (onFailure != null) onFailure!();
        },
      );
}
