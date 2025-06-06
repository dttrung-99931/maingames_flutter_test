import 'dart:core';

import 'package:flutter/widgets.dart';

extension DurationExt on num {
  Duration get milliseconds => Duration(microseconds: (this * 1000).round());

  Duration get seconds => Duration(milliseconds: (this * 1000).round());

  Duration get minutes => Duration(seconds: (this * Duration.secondsPerMinute).round());

  Duration get hours => Duration(minutes: (this * Duration.minutesPerHour).round());

  Duration get days => Duration(hours: (this * Duration.hoursPerDay).round());

  SizedBox get swb => SizedBox(width: toDouble());
  SizedBox get shb => SizedBox(height: toDouble());
}

extension NumExt on num {
  List<T> genList<T>(T Function(int index) generator) {
    return List.generate(toInt(), generator);
  }
}
