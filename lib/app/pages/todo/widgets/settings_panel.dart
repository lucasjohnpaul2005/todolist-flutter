import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../theme/app_theme.dart';
import '../bloc/task_bloc.dart';

class SettingsPanel extends StatelessWidget {
  const SettingsPanel({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TaskBloc>().state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _Section(
          title: 'Data Management',
          icon: Icons.storage_outlined,
          child: ElevatedButton.icon(
            onPressed: () async {
              final confirmed = await showDialog<bool>(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text('Delete all tasks?'),
                  content: const Text('This cannot be undone.'),
                  actions: [
                    TextButton(
                        onPressed: () => Navigator.pop(ctx, false),
                        child: const Text('Cancel')),
                    TextButton(
                        onPressed: () => Navigator.pop(ctx, true),
                        child: const Text('Delete')),
                  ],
                ),
              );
              if (confirmed == true) {
                if (state.hasCompanyTasks) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text(
                        'Cannot delete all tasks — Company tasks cannot be deleted.'),
                  ));
                } else {
                  context.read<TaskBloc>().add(const TaskEvent.clearAllTasks());
                }
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFBDCDD),
              foregroundColor: AppColors.danger,
              elevation: 0,
            ),
            icon: const Icon(Icons.delete_outline, size: 18),
            label: const Text('Delete All Tasks'),
          ),
        ),
        const SizedBox(height: 16),
        _Section(
          title: 'Statistics',
          icon: Icons.bar_chart_rounded,
          child: Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              _StatChip(label: 'Total', value: state.tasks.length),
              _StatChip(label: 'Done', value: state.completedCount),
              _StatChip(label: 'Pending', value: state.pendingCount),
              _StatChip(label: 'Work', value: state.categoryCount('Work')),
              _StatChip(label: 'Personal', value: state.categoryCount('Personal')),
            ],
          ),
        ),
      ],
    );
  }
}

class _Section extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget child;

  const _Section({required this.title, required this.icon, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.paper,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.gray200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Icon(icon, size: 18, color: AppColors.gray900),
              const SizedBox(width: 8),
              Text(title, style: GoogleFonts.fraunces(fontSize: 18, fontWeight: FontWeight.w600)),
            ],
          ),
          const SizedBox(height: 16),
          child,
        ],
      ),
    );
  }
}

class _StatChip extends StatelessWidget {
  final String label;
  final int value;

  const _StatChip({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.gray200),
      ),
      child: Column(
        children: [
          Text('$value',
              style: GoogleFonts.fraunces(
                  fontSize: 24, fontWeight: FontWeight.w600, color: AppColors.primaryDark)),
          const SizedBox(height: 4),
          Text(label, style: GoogleFonts.inter(fontSize: 12, color: AppColors.gray500)),
        ],
      ),
    );
  }
}
