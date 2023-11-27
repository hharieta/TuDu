import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tudu/utils/extensions.dart';
import '../data/models/task.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({super.key, required this.task, this.onCompleted});

  final Task task;
  final Function(bool?)? onCompleted;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final style = context.textTheme;
    final double iconOpacity = task.isCompleted ? 0.3 : 0.5;
    final double backgroundOpacity = task.isCompleted ? 0.1 : 0.3;
    final double borderRadiusOpacity = task.isCompleted ? 0.3 : 1.0;
    final textDecoration =
        task.isCompleted ? TextDecoration.lineThrough : TextDecoration.none;
    final fontWeight = task.isCompleted ? FontWeight.normal : FontWeight.bold;

    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        top: 10,
        bottom: 10,
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(9.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: task.category.color.withOpacity(backgroundOpacity),
              border: Border.all(
                color: task.category.color.withOpacity(borderRadiusOpacity),
                width: 1.5,
              ),
            ),
            child: Center(
              child: Icon(
                task.category.icon,
                color: task.category.color.withOpacity(iconOpacity),
              ),
            ),
          ),
          const Gap(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task.title,
                  style: style.titleMedium?.copyWith(
                      decoration: textDecoration,
                      fontSize: 18,
                      fontWeight: fontWeight),
                ),
                Text(
                  task.note,
                  style: style.titleMedium?.copyWith(
                    decoration: textDecoration,
                  ),
                ),
                Text(
                  task.time,
                  style: style.titleMedium?.copyWith(
                    decoration: textDecoration,
                  ),
                ),
              ],
            ),
          ),
          Checkbox(
            value: task.isCompleted,
            onChanged: onCompleted,
            checkColor: colors.surface,
          ),
        ],
      ),
    );
  }
}
