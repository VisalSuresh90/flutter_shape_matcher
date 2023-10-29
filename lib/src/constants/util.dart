import 'dart:math';
import 'dart:math' as math;

import 'package:flutter/material.dart';

class Util {
  /// This is a function that returns a boolean value if the passed list is either empty or null.
  /// [list] : can be any type of list
  /// Returns true if the passed list is null or empty.
  static bool isListNullOrEmpty(List<dynamic>? list) {
    return list == null || list.isEmpty;
  }

  /// This is a function that returns a boolean value if the passed String is either empty or null.
  /// [value] : should be String value,can pass null value also
  /// Returns true if the passed String is null or empty.
  static bool isNullOrEmpty(String? value) {
    return (value == null || value.isEmpty);
  }

  /// This is a function that returns a empty String if it was an empty one.
  /// [value] : should be String value,can pass null value also
  /// Returns empty String if the passed String value is null, otherwise returns actual String value
  static String getBlankIfNull(String? value) {
    return isNullOrEmpty(value) ? '' : value!.trim();
  }

  /// This is a function that returns a random color code.
  /// Returns Color class
  static Color getRandomColor() {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
        .withOpacity(1.0);
  }

  /// This is a function that returns a random number between the passed min and max value.
  /// [min]: the minumum random value can select
  /// [max]: the maximum random value can select
  /// Returns any random integer value between the minumum and maximum value.
  static int getRandomNumber(int min, int max) {
    Random random = Random();
    int randomNumber = random.nextInt(max) + min;
    // debugPrint('getRandomNumber $randomNumber');
    return randomNumber;
  }
}
