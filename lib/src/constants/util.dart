import 'dart:math';
import 'dart:math' as math;

import 'package:flutter/material.dart';

class Util {
  static bool isListNullOrEmpty(List<dynamic>? list) {
    return list == null || list.isEmpty;
  }

  static bool isNullOrEmpty(String? value) {
    return (value == null || value.isEmpty);
  }

  static String getBlankIfNull(String? value) {
    return isNullOrEmpty(value) ? '' : value!.trim();
  }

  static getRandomColor() {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
        .withOpacity(1.0);
  }

  static getRandomNumber(int min, int max) {
    Random random = Random();
    int randomNumber = random.nextInt(max) + min;
    // debugPrint('getRandomNumber $randomNumber');
    return randomNumber;
  }

  static getLightenColor(Color color, [double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(color);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }
}
