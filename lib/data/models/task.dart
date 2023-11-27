import 'package:equatable/equatable.dart';

import '../../utils/taks_categories.dart';

class Task extends Equatable {
  final int? id;
  final String title;
  final String note;
  final String time;
  final String date;
  final TaskCategories category;
  final bool isCompleted;

  const Task({
    this.id,
    required this.title,
    required this.note,
    required this.time,
    required this.date,
    required this.category,
    required this.isCompleted,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        note,
        time,
        date,
        category,
        isCompleted,
      ];

  // @override
  // bool operator ==(covariant Task other) {
  //   if (identical(this, other)) return true;

  //   return other.id == id &&
  //       other.title == title &&
  //       other.note == note &&
  //       other.time == time &&
  //       other.date == date &&
  //       //other.category == category &&
  //       other.isCompleted == isCompleted;
  // }

  // @override
  // int get hashCode {
  //   return id.hashCode ^
  //       title.hashCode ^
  //       note.hashCode ^
  //       time.hashCode ^
  //       date.hashCode ^
  //       //category.hashCode ^
  //       isCompleted.hashCode;
  // }
}
