import 'dart:convert';

import '../../domain/entities/entities.dart';

class ExerciseModel extends Exercise {
  const ExerciseModel({
    required super.title,
    required super.prelude,
    required super.duration,
    super.index,
    super.startTime,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'title': title});
    result.addAll({'prelude': prelude});
    result.addAll({'duration': duration});
    if (index != null) result.addAll({'index': index});
    if (startTime != null) result.addAll({'startTime': startTime});

    return result;
  }

  factory ExerciseModel.fromMap(
    Map<String, dynamic> map, {
    int? index,
    int? startTime,
  }) {
    return ExerciseModel(
      title: map['title'] ?? '',
      prelude: map['prelude']?.toInt() ?? 0,
      duration: map['duration']?.toInt() ?? 0,
      index: index,
      startTime: startTime,
    );
  }

  String toJson() => json.encode(toMap());

  factory ExerciseModel.fromJson(String source) =>
      ExerciseModel.fromMap(json.decode(source));
}
