import 'package:flutter/material.dart';

class HWTasks extends StatelessWidget{
  final String taskName;
  final bool TaskCompleted;
  Function (bool?)? onChanged;

  HWTasks ({
    super.key,
    required this.taskName,
    required this.TaskCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            //checkbox

            Checkbox(value: TaskCompleted, onChanged: onChanged),
            //task name

            Text(taskName),
          ],
        ),
        decoration: BoxDecoration (
            color: Colors.pink
        ),
      ),
    );
  }
}