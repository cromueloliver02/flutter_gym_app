import 'dart:convert';

import 'package:equatable/equatable.dart';

class Exercise extends Equatable {
  final String title;
  final int prelude;
  final int duration;
  final int? index;
  final int? startTime;

  const Exercise({
    required this.title,
    required this.prelude,
    required this.duration,
    this.index,
    this.startTime,
  });

  @override
  List<Object?> get props {
    return [
      title,
      prelude,
      duration,
      index,
      startTime,
    ];
  }

  @override
  String toString() {
    return 'Exercise(title: $title, prelude: $prelude, duration: $duration, index: $index, startTime: $startTime)';
  }

  Exercise copyWith({
    String Function()? title,
    int Function()? prelude,
    int Function()? duration,
    int Function()? index,
    int Function()? startTime,
  }) {
    return Exercise(
      title: title != null ? title() : this.title,
      prelude: prelude != null ? prelude() : this.prelude,
      duration: duration != null ? duration() : this.duration,
      index: index != null ? index() : this.index,
      startTime: startTime != null ? startTime() : this.startTime,
    );
  }
}
