import 'package:flutter/material.dart';

import 'widget/shapedrag_widget.dart';

class ShapeMatcher extends StatefulWidget {
  final Function()? onSuccess;
  final Function()? onFailure;
  const ShapeMatcher({
    super.key,
    this.onSuccess,
    this.onFailure,
  });

  @override
  State<ShapeMatcher> createState() => _ShapeMatcherState();
}

class _ShapeMatcherState extends State<ShapeMatcher> {
  @override
  Widget build(BuildContext context) {
    return ShapeDragWidget(
      onSuccess: () {
        debugPrint('openParentalGate onSuccess');
        if (widget.onSuccess != null) widget.onSuccess!();
      },
      onFailure: () {
        debugPrint('openParentalGate onFailure');
        if (widget.onFailure != null) widget.onFailure!();
      },
    );
  }
}
