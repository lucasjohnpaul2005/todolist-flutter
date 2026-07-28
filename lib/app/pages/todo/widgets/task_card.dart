import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../../../domain/entities/task_entity.dart';
import '../../../../theme/app_theme.dart';

class TaskCard extends StatelessWidget {
  final TaskEntity task;
  final VoidCallback onToggleComplete;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const TaskCard({
    super.key,
    required this.task,
    required this.onToggleComplete,
    required this.onEdit,
    required this.onDelete,
  });

  String get _formattedDate {
    if (task.dueDate.isEmpty) return 'No date';
    try {
      final date = DateTime.parse(task.dueDate);
      return DateFormat('MMM d, yyyy').format(date);
    } catch (_) {
      return task.dueDate;
    }
  }

  Color get _locationColor {
    switch (task.workLocation) {
      case 'Work from Home':
        return AppColors.success;
      case 'Work from Company':
        return AppColors.secondary;
      default:
        return AppColors.gray500;
    }
  }

  IconData? get _locationIcon {
    switch (task.workLocation) {
      case 'Work from Home':
        return Icons.home_rounded;
      case 'Work from Company':
        return Icons.apartment_rounded;
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.paper,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.gray100),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.12),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Checkbox(
                value: task.completed,
                onChanged: (_) => onToggleComplete(),
                activeColor: AppColors.primary,
              ),
              Expanded(
                child: Text(
                  task.title,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: task.completed ? AppColors.gray400 : AppColors.gray800,
                    decoration: task.completed ? TextDecoration.lineThrough : null,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.edit_outlined, size: 20),
                color: AppColors.warning,
                onPressed: onEdit,
                tooltip: 'Edit',
              ),
              IconButton(
                icon: const Icon(Icons.delete_outline, size: 20),
                color: AppColors.danger,
                onPressed: onDelete,
                tooltip: 'Delete',
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 44),
            child: Wrap(
              spacing: 12,
              runSpacing: 6,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                if (task.category == 'Work' && task.workLocation != null)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: _locationColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (_locationIcon != null) ...[
                          Icon(_locationIcon, size: 12, color: Colors.white),
                          const SizedBox(width: 4),
                        ],
                        Text(
                          task.workLocation!,
                          style: GoogleFonts.inter(
                              fontSize: 11, fontWeight: FontWeight.w600, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.calendar_today_outlined, size: 13, color: AppColors.gray500),
                    const SizedBox(width: 5),
                    Text(
                      _formattedDate,
                      style: GoogleFonts.inter(fontSize: 13, color: AppColors.gray500),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
