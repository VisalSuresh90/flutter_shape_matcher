// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';

class BounceInDownAnimation extends StatefulWidget {
  final Widget child;
  int durationInMilliseconds;

  BounceInDownAnimation({
    super.key,
    required this.child,
    this.durationInMilliseconds = 2000,
  });

  @override
  _BounceInDownAnimationState createState() => _BounceInDownAnimationState();
}

class _BounceInDownAnimationState extends State<BounceInDownAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(
          milliseconds:
              widget.durationInMilliseconds), // Adjust the duration as needed
      vsync: this,
    );

    final curvedAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut, // Adjust the curve for the bounce effect
    );

    _animation = Tween<double>(
      begin: -100.0, // Initial position off-screen to the right
      end: 0.0, // Final position on-screen
    ).animate(curvedAnimation);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _animation.value),
          child: child,
        );
      },
      child: widget.child,
    );
  }
}
