import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../domain/entities/task_entity.dart';
import '../../../../theme/app_theme.dart';
import 'task_card.dart';

class TodoList extends StatelessWidget {
  final List<TaskEntity> todos;
  final void Function(int id) onToggleComplete;
  final void Function(TaskEntity todo) onEdit;
  final void Function(int id) onDelete;

  const TodoList({
    super.key,
    required this.todos,
    required this.onToggleComplete,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    if (todos.isEmpty) {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
        decoration: BoxDecoration(
          color: AppColors.paper,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: AppColors.gray200),
        ),
        child: Column(
          children: [
            const Icon(Icons.inbox_outlined, size: 48, color: AppColors.gray300),
            const SizedBox(height: 16),
            Text(
              'No tasks here. Add one below!',
              style: GoogleFonts.inter(fontSize: 16, color: AppColors.gray500),
            ),
          ],
        ),
      );
    }

    return Column(
      children: todos
          .map((todo) => TaskCard(
                task: todo,
                onToggleComplete: () => onToggleComplete(todo.id),
                onEdit: () => onEdit(todo),
                onDelete: () => onDelete(todo.id),
              ))
          .toList(),
    );
  }
}
