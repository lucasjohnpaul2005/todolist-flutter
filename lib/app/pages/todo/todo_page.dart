import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../../theme/app_theme.dart';
import 'bloc/task_bloc.dart';
import 'widgets/add_task_sheet.dart';
import 'widgets/app_drawer.dart';
import 'widgets/edit_task_sheet.dart';
import 'widgets/settings_panel.dart';
import 'widgets/stats_dashboard.dart';
import 'widgets/todo_list.dart';

@RoutePage()
class TodoPage extends StatelessWidget {
  const TodoPage({super.key});
  static const route = '/todo';

  @override
  Widget build(BuildContext context) {
    // AuthGuard guarantees currentUser is non-null before this page is reached.
    final userId = FirebaseAuth.instance.currentUser!.uid;
    return BlocProvider(
      create: (_) => TaskBloc(userId: userId),
      child: const _TodoView(),
    );
  }
}

class _TodoView extends StatelessWidget {
  const _TodoView();

  ({IconData icon, String label}) _tabMeta(TaskTab tab) {
    switch (tab) {
      case TaskTab.work:
        return (icon: Icons.work_outline, label: 'Work Tasks');
      case TaskTab.personal:
        return (icon: Icons.home_outlined, label: 'Personal Tasks');
      case TaskTab.completed:
        return (icon: Icons.check_circle_outline, label: 'Completed Tasks');
      case TaskTab.settings:
        return (icon: Icons.settings_outlined, label: 'Settings');
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return BlocConsumer<TaskBloc, TaskState>(
      listenWhen: (previous, current) =>
          current.status == TaskStatus.error && current.errorMessage != previous.errorMessage,
      listener: (context, state) {
        if (state.errorMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMessage!)),
          );
        }
      },
      builder: (context, state) {
        final meta = _tabMeta(state.activeTab);

        return Scaffold(
          backgroundColor: AppColors.ink900,
          drawer: const AppDrawer(),
          body: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: const Alignment(-0.7, -0.9),
                radius: 1.4,
                colors: [AppColors.primary.withValues(alpha: 0.16), AppColors.ink900],
              ),
            ),
            child: SafeArea(
              child: RefreshIndicator(
                onRefresh: () async =>
                    context.read<TaskBloc>().add(const TaskEvent.readTasks()),
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
                  children: [
                    Row(
                      children: [
                        Builder(
                          builder: (ctx) => IconButton(
                            icon: const Icon(Icons.menu, color: Colors.white),
                            onPressed: () => Scaffold.of(ctx).openDrawer(),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Icon(meta.icon, color: Colors.white, size: 26),
                              const SizedBox(width: 8),
                              Flexible(
                                child: Text(
                                  meta.label,
                                  style: GoogleFonts.fraunces(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        PopupMenuButton<String>(
                          icon: const CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.white24,
                            child: Icon(Icons.person, size: 18, color: Colors.white),
                          ),
                          onSelected: (value) {
                            if (value == 'logout') {
                              FirebaseAuth.instance.signOut();
                            }
                          },
                          itemBuilder: (_) => [
                            PopupMenuItem(
                              enabled: false,
                              child: Text(user?.email ?? 'User',
                                  style: GoogleFonts.inter(fontSize: 13)),
                            ),
                            const PopupMenuDivider(),
                            const PopupMenuItem(
                              value: 'logout',
                              child: Row(
                                children: [
                                  Icon(Icons.logout, size: 18),
                                  SizedBox(width: 8),
                                  Text('Logout'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 48, top: 2, bottom: 16),
                      child: Text(
                        DateFormat('EEEE, MMMM d, yyyy').format(DateTime.now()),
                        style: GoogleFonts.inter(
                            fontSize: 13, color: Colors.white.withValues(alpha: 0.65)),
                      ),
                    ),
                    StatsDashboard(
                      total: state.tasks.length,
                      done: state.completedCount,
                      pending: state.pendingCount,
                      progressPercent: state.progressPercent,
                    ),
                    const SizedBox(height: 20),
                    if (state.isLoading && state.tasks.isEmpty)
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 40),
                        child: Center(child: CircularProgressIndicator(color: AppColors.primary)),
                      )
                    else if (state.activeTab == TaskTab.settings)
                      const SettingsPanel()
                    else ...[
                      TodoList(
                        todos: state.filteredTasks,
                        onToggleComplete: (id) =>
                            context.read<TaskBloc>().add(TaskEvent.toggleComplete(id: id)),
                        onEdit: (task) => showEditTaskSheet(context, task),
                        onDelete: (id) async {
                          final task = state.tasks.firstWhere((t) => t.id == id);
                          if (task.workLocation == 'Work from Company') {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Company tasks cannot be deleted.')),
                            );
                            return;
                          }
                          final confirmed = await showDialog<bool>(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: const Text('Delete this task?'),
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
                          if (confirmed == true && context.mounted) {
                            context.read<TaskBloc>().add(TaskEvent.deleteTask(id: id));
                          }
                        },
                      ),
                      const SizedBox(height: 8),
                      OutlinedButton.icon(
                        onPressed: () => showAddTaskSheet(context),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          side: BorderSide(color: Colors.white.withValues(alpha: 0.3), width: 2),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        ),
                        icon: const Icon(Icons.add),
                        label: const Text('Add New Task'),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
