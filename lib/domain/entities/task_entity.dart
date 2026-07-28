import 'package:equatable/equatable.dart';

/// Mirrors domain/entities/Task.ts from the web app.
class TaskEntity extends Equatable {
  final int id;
  final String title;
  final String category; // 'Work' | 'Personal'
  final String dueDate; // ISO date string, e.g. "2026-07-23"
  final bool completed;
  final String? workLocation; // 'Work from Home' | 'Work from Company' | null

  const TaskEntity({
    required this.id,
    required this.title,
    required this.category,
    required this.dueDate,
    required this.completed,
    this.workLocation,
  });

  TaskEntity copyWith({
    String? title,
    String? category,
    String? dueDate,
    bool? completed,
    String? workLocation,
  }) {
    return TaskEntity(
      id: id,
      title: title ?? this.title,
      category: category ?? this.category,
      dueDate: dueDate ?? this.dueDate,
      completed: completed ?? this.completed,
      workLocation: workLocation ?? this.workLocation,
    );
  }

  @override
  List<Object?> get props =>
      [id, title, category, dueDate, completed, workLocation];
}
