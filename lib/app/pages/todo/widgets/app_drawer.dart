import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../theme/app_theme.dart';
import '../bloc/task_bloc.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TaskBloc>().state;

    return Drawer(
      backgroundColor: AppColors.paper,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                children: [
                  const Icon(Icons.checklist_rtl, size: 24),
                  const SizedBox(width: 10),
                  Text('TodoList',
                      style: GoogleFonts.fraunces(fontSize: 22, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            const Divider(height: 1, color: AppColors.gray200),
            _NavTile(
              icon: Icons.work_outline,
              label: 'Work Tasks',
              count: state.categoryCount('Work'),
              active: state.activeTab == TaskTab.work,
              onTap: () {
                context.read<TaskBloc>().add(const TaskEvent.changeTab(tab: TaskTab.work));
                Navigator.pop(context);
              },
            ),
            _NavTile(
              icon: Icons.home_outlined,
              label: 'Personal Tasks',
              count: state.categoryCount('Personal'),
              active: state.activeTab == TaskTab.personal,
              onTap: () {
                context.read<TaskBloc>().add(const TaskEvent.changeTab(tab: TaskTab.personal));
                Navigator.pop(context);
              },
            ),
            _NavTile(
              icon: Icons.check_circle_outline,
              label: 'Completed',
              count: state.completedCount,
              active: state.activeTab == TaskTab.completed,
              onTap: () {
                context.read<TaskBloc>().add(const TaskEvent.changeTab(tab: TaskTab.completed));
                Navigator.pop(context);
              },
            ),
            _NavTile(
              icon: Icons.settings_outlined,
              label: 'Settings',
              active: state.activeTab == TaskTab.settings,
              onTap: () {
                context.read<TaskBloc>().add(const TaskEvent.changeTab(tab: TaskTab.settings));
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _NavTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final int? count;
  final bool active;
  final VoidCallback onTap;

  const _NavTile({
    required this.icon,
    required this.label,
    this.count,
    required this.active,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Material(
        color: active ? AppColors.primary : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                Icon(icon, size: 20, color: active ? Colors.white : AppColors.gray600),
                const SizedBox(width: 14),
                Expanded(
                  child: Text(
                    label,
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: active ? Colors.white : AppColors.gray600,
                    ),
                  ),
                ),
                if (count != null)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    decoration: BoxDecoration(
                      color: active
                          ? Colors.white.withValues(alpha: 0.22)
                          : Colors.black.withValues(alpha: 0.06),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '$count',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: active ? Colors.white : AppColors.gray600,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
